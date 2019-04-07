<meta name="layout" content="main"/>

<div>
    <div>
        <g:form controller="member" action="update">
            <g:hiddenField name="id" value="${member.id}"/>
            <g:render template="form" model="[edit:'yes']"/>
            <div>
                <g:submitButton name="update" value="${g.message(code: "update")}"/>
                <g:link controller="member" action="index"><g:message code="cancel"/></g:link>
            </div>
        </g:form>
    </div>
</div>