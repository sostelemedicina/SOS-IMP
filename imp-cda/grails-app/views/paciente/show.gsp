
<%@ page import="imp.Paciente" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="paciente.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: pacienteInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="paciente.idPaciente.label" default="Id Paciente" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: pacienteInstance, field: "idPaciente")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="paciente.cedula.label" default="Cedula" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: pacienteInstance, field: "cedula")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="paciente.pasaporte.label" default="Pasaporte" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: pacienteInstance, field: "pasaporte")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="paciente.primerNombre.label" default="Primer Nombre" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: pacienteInstance, field: "primerNombre")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="paciente.segundoNombre.label" default="Segundo Nombre" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: pacienteInstance, field: "segundoNombre")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="paciente.primerApellido.label" default="Primer Apellido" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: pacienteInstance, field: "primerApellido")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="paciente.segundoApellido.label" default="Segundo Apellido" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: pacienteInstance, field: "segundoApellido")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="paciente.cdas.label" default="Cdas" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${pacienteInstance.cdas}" var="c">
                                    <li><g:link controller="cda" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="paciente.indice.label" default="Indice" /></td>
                            
                            <td valign="top" class="value"><g:link controller="indicePaciente" action="show" id="${pacienteInstance?.indice?.id}">${pacienteInstance?.indice?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${pacienteInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
