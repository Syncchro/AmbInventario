package ambivent

class SoftwaresController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [softwaresInstanceList: Softwares.list(params), softwaresInstanceTotal: Softwares.count()]
    }

    def create = {
        def softwaresInstance = new Softwares()
        softwaresInstance.properties = params
        return [softwaresInstance: softwaresInstance]
    }

    def save = {
        def softwaresInstance = new Softwares(params)
        if (softwaresInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'softwares.label', default: 'Softwares'), softwaresInstance.id])}"
            redirect(action: "show", id: softwaresInstance.id)
        }
        else {
            render(view: "create", model: [softwaresInstance: softwaresInstance])
        }
    }

    def show = {
        def softwaresInstance = Softwares.get(params.id)
        if (!softwaresInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'softwares.label', default: 'Softwares'), params.id])}"
            redirect(action: "list")
        }
        else {
            [softwaresInstance: softwaresInstance]
        }
    }

    def edit = {
        def softwaresInstance = Softwares.get(params.id)
        if (!softwaresInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'softwares.label', default: 'Softwares'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [softwaresInstance: softwaresInstance]
        }
    }

    def update = {
        def softwaresInstance = Softwares.get(params.id)
        if (softwaresInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (softwaresInstance.version > version) {
                    
                    softwaresInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'softwares.label', default: 'Softwares')] as Object[], "Another user has updated this Softwares while you were editing")
                    render(view: "edit", model: [softwaresInstance: softwaresInstance])
                    return
                }
            }
            softwaresInstance.properties = params
            if (!softwaresInstance.hasErrors() && softwaresInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'softwares.label', default: 'Softwares'), softwaresInstance.id])}"
                redirect(action: "show", id: softwaresInstance.id)
            }
            else {
                render(view: "edit", model: [softwaresInstance: softwaresInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'softwares.label', default: 'Softwares'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def softwaresInstance = Softwares.get(params.id)
        if (softwaresInstance) {
            try {
                softwaresInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'softwares.label', default: 'Softwares'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'softwares.label', default: 'Softwares'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'softwares.label', default: 'Softwares'), params.id])}"
            redirect(action: "list")
        }
    }
}
