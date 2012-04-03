package br.com.synchro.ambinventario

class SolicitanteController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [solicitanteInstanceList: Solicitante.list(params), solicitanteInstanceTotal: Solicitante.count()]
    }

    def create = {
        def solicitanteInstance = new Solicitante()
        solicitanteInstance.properties = params
        return [solicitanteInstance: solicitanteInstance]
    }

    def save = {
        def solicitanteInstance = new Solicitante(params)
        if (solicitanteInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'solicitante.label', default: 'Solicitante'), solicitanteInstance.id])}"
            redirect(action: "show", id: solicitanteInstance.id)
        }
        else {
            render(view: "create", model: [solicitanteInstance: solicitanteInstance])
        }
    }

    def show = {
        def solicitanteInstance = Solicitante.get(params.id)
        if (!solicitanteInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'solicitante.label', default: 'Solicitante'), params.id])}"
            redirect(action: "list")
        }
        else {
            [solicitanteInstance: solicitanteInstance]
        }
    }

    def edit = {
        def solicitanteInstance = Solicitante.get(params.id)
        if (!solicitanteInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'solicitante.label', default: 'Solicitante'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [solicitanteInstance: solicitanteInstance]
        }
    }

    def update = {
        def solicitanteInstance = Solicitante.get(params.id)
        if (solicitanteInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (solicitanteInstance.version > version) {
                    
                    solicitanteInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'solicitante.label', default: 'Solicitante')] as Object[], "Another user has updated this Solicitante while you were editing")
                    render(view: "edit", model: [solicitanteInstance: solicitanteInstance])
                    return
                }
            }
            solicitanteInstance.properties = params
            if (!solicitanteInstance.hasErrors() && solicitanteInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'solicitante.label', default: 'Solicitante'), solicitanteInstance.id])}"
                redirect(action: "show", id: solicitanteInstance.id)
            }
            else {
                render(view: "edit", model: [solicitanteInstance: solicitanteInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'solicitante.label', default: 'Solicitante'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def solicitanteInstance = Solicitante.get(params.id)
        if (solicitanteInstance) {
            try {
                solicitanteInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'solicitante.label', default: 'Solicitante'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'solicitante.label', default: 'Solicitante'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'solicitante.label', default: 'Solicitante'), params.id])}"
            redirect(action: "list")
        }
    }
}
