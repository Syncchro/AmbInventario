package br.com.synchro.ambinventario

class InstanciaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [instanciaInstanceList: Instancia.list(params), instanciaInstanceTotal: Instancia.count()]
    }

    def create = {
        def instanciaInstance = new Instancia()
        instanciaInstance.properties = params
        return [instanciaInstance: instanciaInstance]
    }

    def save = {
        def instanciaInstance = new Instancia(params)
        if (instanciaInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'instancia.label', default: 'Instancia'), instanciaInstance.id])}"
            redirect(action: "show", id: instanciaInstance.id)
        }
        else {
            render(view: "create", model: [instanciaInstance: instanciaInstance])
        }
    }

    def show = {
        def instanciaInstance = Instancia.get(params.id)
        if (!instanciaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'instancia.label', default: 'Instancia'), params.id])}"
            redirect(action: "list")
        }
        else {
            [instanciaInstance: instanciaInstance]
        }
    }

    def edit = {
        def instanciaInstance = Instancia.get(params.id)
        if (!instanciaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'instancia.label', default: 'Instancia'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [instanciaInstance: instanciaInstance]
        }
    }

    def update = {
        def instanciaInstance = Instancia.get(params.id)
        if (instanciaInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (instanciaInstance.version > version) {
                    
                    instanciaInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'instancia.label', default: 'Instancia')] as Object[], "Another user has updated this Instancia while you were editing")
                    render(view: "edit", model: [instanciaInstance: instanciaInstance])
                    return
                }
            }
            instanciaInstance.properties = params
            if (!instanciaInstance.hasErrors() && instanciaInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'instancia.label', default: 'Instancia'), instanciaInstance.id])}"
                redirect(action: "show", id: instanciaInstance.id)
            }
            else {
                render(view: "edit", model: [instanciaInstance: instanciaInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'instancia.label', default: 'Instancia'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def instanciaInstance = Instancia.get(params.id)
        if (instanciaInstance) {
            try {
                instanciaInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'instancia.label', default: 'Instancia'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'instancia.label', default: 'Instancia'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'instancia.label', default: 'Instancia'), params.id])}"
            redirect(action: "list")
        }
    }
}
