package br.com.synchro.ambinventario

class AmbienteController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [ambienteInstanceList: Ambiente.list(params), ambienteInstanceTotal: Ambiente.count()]
    }

    def create = {
        def ambienteInstance = new Ambiente()
        ambienteInstance.properties = params
        return [ambienteInstance: ambienteInstance]
    }

    def save = {
        def ambienteInstance = new Ambiente(params)
        if (ambienteInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'ambiente.label', default: 'Ambiente'), ambienteInstance.id])}"
            redirect(action: "show", id: ambienteInstance.id)
        }
        else {
            render(view: "create", model: [ambienteInstance: ambienteInstance])
        }
    }

    def show = {
        def ambienteInstance = Ambiente.get(params.id)
        if (!ambienteInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'ambiente.label', default: 'Ambiente'), params.id])}"
            redirect(action: "list")
        }
        else {
            [ambienteInstance: ambienteInstance]
        }
    }

    def edit = {
        def ambienteInstance = Ambiente.get(params.id)
        if (!ambienteInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'ambiente.label', default: 'Ambiente'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [ambienteInstance: ambienteInstance]
        }
    }

    def update = {
        def ambienteInstance = Ambiente.get(params.id)
        if (ambienteInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (ambienteInstance.version > version) {
                    
                    ambienteInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'ambiente.label', default: 'Ambiente')] as Object[], "Another user has updated this Ambiente while you were editing")
                    render(view: "edit", model: [ambienteInstance: ambienteInstance])
                    return
                }
            }
            ambienteInstance.properties = params
            if (!ambienteInstance.hasErrors() && ambienteInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'ambiente.label', default: 'Ambiente'), ambienteInstance.id])}"
                redirect(action: "show", id: ambienteInstance.id)
            }
            else {
                render(view: "edit", model: [ambienteInstance: ambienteInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'ambiente.label', default: 'Ambiente'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def ambienteInstance = Ambiente.get(params.id)
        if (ambienteInstance) {
            try {
                ambienteInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'ambiente.label', default: 'Ambiente'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'ambiente.label', default: 'Ambiente'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'ambiente.label', default: 'Ambiente'), params.id])}"
            redirect(action: "list")
        }
    }
}
