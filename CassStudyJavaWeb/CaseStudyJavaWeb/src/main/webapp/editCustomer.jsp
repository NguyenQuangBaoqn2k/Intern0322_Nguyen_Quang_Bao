<%--
  Created by IntelliJ IDEA.
  User: KimAnh
  Date: 4/3/2022
  Time: 10:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
</head>
<body>

                <form class="infor-customer" method="post" action="/customer?action=update">
                    <input name="id" type="text" placeholder="Customer id" value="${customer.id}">
                    <input name="name" type="text" placeholder="Customer name" value="${customer.employeeName}" >
                    <input name="birth" type="date" placeholder="Customer birth day" value="${customer.employeeBirthday}" >
                    <div class="radio">
                        <input name = "gender" type="radio"
                               value="${customer.gender}" checked>
                        <label >Male</label>

                        <input name="${customer.gender}" type="radio"
                               value="1">
                        <label>Female</label>
                    </div>
                    <input name="idcard" type="text "value=" ${customer.employeeCard}" placeholder="Customer id card" >
                    <input name="phone" type="text" placeholder="Customer phone"value= "${customer.employeePhone}" >
                    <input name="email" type="text" placeholder="Customer email" value=" ${customer.employeeEmail}" >
                    <input name="address" type="text" placeholder="Customer dia chi" value="${customer.address}"  >

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Saves</button>
                    </div>
                </form>


</body>
</html>
