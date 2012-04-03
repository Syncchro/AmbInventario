package br.com.synchro.ambinventario

class SoftwareController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [softwareInstanceList: Software.list(params), softwareInstanceTotal: Software.count()]
    }

    def create = {
        def softwareInstance = new Software()
        softwareInstance.properties = params
        return [softwareInstance: softwareInstance]
    }

    def save = {
        def softwareInstance = new Software(params)
        if (softwareInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'software.label', default: 'Software'), softwareInstance.id])}"
            redirect(action: "show", id: softwareInstance.id)
        }
        else {
            render(view: "create", model: [softwareInstance: softwareInstance])
        }
    }

    def show = {
        def softwareInstance = Software.get(params.id)
        if (!softwareInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'software.label', default: 'Software'), params.id])}"
            redirect(action: "list")
        }
        else {
            [softwareInstance: softwareInstance]
        }
    }

    def edit = {
        def softwareInstance = Software.get(params.id)
        if (!softwareInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'software.label', default: 'Software'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [softwareInstance: softwareInstance]
        }
    }

    def update = {
        def softwareInstance = Software.get(params.id)
        if (softwareInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (softwareInstance.version > version) {
                    
                    softwareInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'software.label', default: 'Software')] as Object[], "Another user has updated this Software while you were editing")
                    render(view: "edit", model: [softwareInstance: softwareInstance])
                    return
                }
            }
            softwareInstance.properties = params
            if (!softwareInstance.hasErrors() && softwareInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'software.label', default: 'Software'), softwareInstance.id])}"
                redirect(action: "show", id: softwareInstance.id)
            }
            else {
                render(view: "edit", model: [softwareInstance: softwareInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'software.label', default: 'Software'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def softwareInstance = Software.get(params.id)
        if (softwareInstance) {
            try {
                softwareInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'software.label', default: 'Software'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'software.label', default: 'Software'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'software.label', default: 'Software'), params.id])}"
            redirect(action: "list")
        }
    }
}
