package br.com.synchro.ambinventario

import br.com.synchro.ambinventario.Ambientes;

class AmbientesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [ambientesInstanceList: Ambientes.list(params), ambientesInstanceTotal: Ambientes.count()]
    }

    def create = {
        def ambientesInstance = new Ambientes()
        ambientesInstance.properties = params
        return [ambientesInstance: ambientesInstance]
    }

    def save = {
        def ambientesInstance = new Ambientes(params)
        if (ambientesInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'ambientes.label', default: 'Ambientes'), ambientesInstance.id])}"
            redirect(action: "show", id: ambientesInstance.id)
        }
        else {
            render(view: "create", model: [ambientesInstance: ambientesInstance])
        }
    }

    def show = {
        def ambientesInstance = Ambientes.get(params.id)
        if (!ambientesInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'ambientes.label', default: 'Ambientes'), params.id])}"
            redirect(action: "list")
        }
        else {
            [ambientesInstance: ambientesInstance]
        }
    }

    def edit = {
        def ambientesInstance = Ambientes.get(params.id)
        if (!ambientesInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'ambientes.label', default: 'Ambientes'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [ambientesInstance: ambientesInstance]
        }
    }

    def update = {
        def ambientesInstance = Ambientes.get(params.id)
        if (ambientesInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (ambientesInstance.version > version) {
                    
                    ambientesInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'ambientes.label', default: 'Ambientes')] as Object[], "Another user has updated this Ambientes while you were editing")
                    render(view: "edit", model: [ambientesInstance: ambientesInstance])
                    return
                }
            }
            ambientesInstance.properties = params
            if (!ambientesInstance.hasErrors() && ambientesInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'ambientes.label', default: 'Ambientes'), ambientesInstance.id])}"
                redirect(action: "show", id: ambientesInstance.id)
            }
            else {
                render(view: "edit", model: [ambientesInstance: ambientesInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'ambientes.label', default: 'Ambientes'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def ambientesInstance = Ambientes.get(params.id)
        if (ambientesInstance) {
            try {
                ambientesInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'ambientes.label', default: 'Ambientes'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'ambientes.label', default: 'Ambientes'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'ambientes.label', default: 'Ambientes'), params.id])}"
            redirect(action: "list")
        }
    }
}
