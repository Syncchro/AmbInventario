package br.com.synchro.ambinventario

class SOController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [SOInstanceList: SO.list(params), SOInstanceTotal: SO.count()]
    }

    def create = {
        def SOInstance = new SO()
        SOInstance.properties = params
        return [SOInstance: SOInstance]
    }

    def save = {
        def SOInstance = new SO(params)
        if (SOInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'SO.label', default: 'SO'), SOInstance.id])}"
            redirect(action: "show", id: SOInstance.id)
        }
        else {
            render(view: "create", model: [SOInstance: SOInstance])
        }
    }

    def show = {
        def SOInstance = SO.get(params.id)
        if (!SOInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'SO.label', default: 'SO'), params.id])}"
            redirect(action: "list")
        }
        else {
            [SOInstance: SOInstance]
        }
    }

    def edit = {
        def SOInstance = SO.get(params.id)
        if (!SOInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'SO.label', default: 'SO'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [SOInstance: SOInstance]
        }
    }

    def update = {
        def SOInstance = SO.get(params.id)
        if (SOInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (SOInstance.version > version) {
                    
                    SOInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'SO.label', default: 'SO')] as Object[], "Another user has updated this SO while you were editing")
                    render(view: "edit", model: [SOInstance: SOInstance])
                    return
                }
            }
            SOInstance.properties = params
            if (!SOInstance.hasErrors() && SOInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'SO.label', default: 'SO'), SOInstance.id])}"
                redirect(action: "show", id: SOInstance.id)
            }
            else {
                render(view: "edit", model: [SOInstance: SOInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'SO.label', default: 'SO'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def SOInstance = SO.get(params.id)
        if (SOInstance) {
            try {
                SOInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'SO.label', default: 'SO'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'SO.label', default: 'SO'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'SO.label', default: 'SO'), params.id])}"
            redirect(action: "list")
        }
    }
}
