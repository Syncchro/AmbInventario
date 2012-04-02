package br.com.synchro.ambinventario

import br.com.synchro.ambinventario.Locais;

class LocaisController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [locaisInstanceList: Locais.list(params), locaisInstanceTotal: Locais.count()]
    }

    def create = {
        def locaisInstance = new Locais()
        locaisInstance.properties = params
        return [locaisInstance: locaisInstance]
    }

    def save = {
        def locaisInstance = new Locais(params)
        if (locaisInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'locais.label', default: 'Locais'), locaisInstance.id])}"
            redirect(action: "show", id: locaisInstance.id)
        }
        else {
            render(view: "create", model: [locaisInstance: locaisInstance])
        }
    }

    def show = {
        def locaisInstance = Locais.get(params.id)
        if (!locaisInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'locais.label', default: 'Locais'), params.id])}"
            redirect(action: "list")
        }
        else {
            [locaisInstance: locaisInstance]
        }
    }

    def edit = {
        def locaisInstance = Locais.get(params.id)
        if (!locaisInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'locais.label', default: 'Locais'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [locaisInstance: locaisInstance]
        }
    }

    def update = {
        def locaisInstance = Locais.get(params.id)
        if (locaisInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (locaisInstance.version > version) {
                    
                    locaisInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'locais.label', default: 'Locais')] as Object[], "Another user has updated this Locais while you were editing")
                    render(view: "edit", model: [locaisInstance: locaisInstance])
                    return
                }
            }
            locaisInstance.properties = params
            if (!locaisInstance.hasErrors() && locaisInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'locais.label', default: 'Locais'), locaisInstance.id])}"
                redirect(action: "show", id: locaisInstance.id)
            }
            else {
                render(view: "edit", model: [locaisInstance: locaisInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'locais.label', default: 'Locais'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def locaisInstance = Locais.get(params.id)
        if (locaisInstance) {
            try {
                locaisInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'locais.label', default: 'Locais'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'locais.label', default: 'Locais'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'locais.label', default: 'Locais'), params.id])}"
            redirect(action: "list")
        }
    }
}
