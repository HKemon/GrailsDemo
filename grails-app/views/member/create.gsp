<meta name="layout" content="main"/>

<g:form controller="member" action="save">
    <g:render template="form"/>
    <div class="form-action-panel">
        <g:submitButton name="save" value="${g.message(code: "save")}"/>
        <g:link controller="member" action="index"><g:message code="cancel"/></g:link>
    </div>
</g:form>