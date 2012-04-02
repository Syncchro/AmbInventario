package ambivent

class InstanciasController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [instanciasInstanceList: Instancias.list(params), instanciasInstanceTotal: Instancias.count()]
    }

    def create = {
        def instanciasInstance = new Instancias()
        instanciasInstance.properties = params
        return [instanciasInstance: instanciasInstance]
    }

    def save = {
        def instanciasInstance = new Instancias(params)
        if (instanciasInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'instancias.label', default: 'Instancias'), instanciasInstance.id])}"
            redirect(action: "show", id: instanciasInstance.id)
        }
        else {
            render(view: "create", model: [instanciasInstance: instanciasInstance])
        }
    }

    def show = {
        def instanciasInstance = Instancias.get(params.id)
        if (!instanciasInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'instancias.label', default: 'Instancias'), params.id])}"
            redirect(action: "list")
        }
        else {
            [instanciasInstance: instanciasInstance]
        }
    }

    def edit = {
        def instanciasInstance = Instancias.get(params.id)
        if (!instanciasInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'instancias.label', default: 'Instancias'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [instanciasInstance: instanciasInstance]
        }
    }

    def update = {
        def instanciasInstance = Instancias.get(params.id)
        if (instanciasInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (instanciasInstance.version > version) {
                    
                    instanciasInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'instancias.label', default: 'Instancias')] as Object[], "Another user has updated this Instancias while you were editing")
                    render(view: "edit", model: [instanciasInstance: instanciasInstance])
                    return
                }
            }
            instanciasInstance.properties = params
            if (!instanciasInstance.hasErrors() && instanciasInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'instancias.label', default: 'Instancias'), instanciasInstance.id])}"
                redirect(action: "show", id: instanciasInstance.id)
            }
            else {
                render(view: "edit", model: [instanciasInstance: instanciasInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'instancias.label', default: 'Instancias'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def instanciasInstance = Instancias.get(params.id)
        if (instanciasInstance) {
            try {
                instanciasInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'instancias.label', default: 'Instancias'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'instancias.label', default: 'Instancias'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'instancias.label', default: 'Instancias'), params.id])}"
            redirect(action: "list")
        }
    }
}
