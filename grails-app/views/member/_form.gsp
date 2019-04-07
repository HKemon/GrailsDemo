<div>
    <label>First Name</label>
    <g:textField name="firstName" value="${member?.firstName}"
                 placeholder="Please Enter First Name"/>
</div>

<div>
    <label>Last Name</label>
    <g:textField name="lastName" value="${member?.lastName}" placeholder="Please Last Name"/>
</div>

<div>
    <label>Email</label>
    <g:field type="email" name="email" value="${member?.email}" placeholder="Please Enter Email"/>
</div>

<div>
    <label>Password</label>
    <g:passwordField name="password" value="${member?.password}"
                     placeholder="Please Enter Password"/>
</div>
