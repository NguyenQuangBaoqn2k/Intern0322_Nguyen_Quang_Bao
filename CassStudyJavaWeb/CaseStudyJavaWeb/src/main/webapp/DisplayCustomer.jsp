<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: KimAnh
  Date: 3/28/2022
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Document</title>
    <link rel="stylesheet" href="DisplayCustomer.css" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <div class="header  ">
        <div class="header-left ">
            <div class="logo">
                <img src="img/logo.png" alt="logo furama">
            </div>
        </div>
        <div class="header-right ">
            <p>${sessionScope.us}</p>
        </div>
    </div>
    <div class="Nav">
        <div class="Menu ">
            <a href="http://localhost:8080/">Home</a>
            <a href="">Employee</a>
            <a href="">Customer</a>
            <a href="">Service</a>
            <a href="">Contract</a>
        </div>
        <div class="Search">
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
    <div class="body ">
        <div class="body-left">
            <ul>
                <li>  <a  href="/customer?action=create">Add new customer</a></li>
                <li><a href="">Display customer</a></li>
                <li><a href="">Edit customer</a></li>
            </ul>
        </div>
        <div class="body-right ">
            <div class="text">
                <h3>Information Customer</h3>
            </div>
            <div>
                <div class="boxContainer">
                    <table class="elementContainer">
                        <tr>
                            <td>
                                <input type="text" placeholder="Search" class="search1">
                            </td>
                            <td>
                                <a href="#"><i class="fa-solid fa-magnifying-glass">search</i></a>
                            </td>
                        </tr>
                    </table>

                </div>
                <div class="container">
                    <c:if test="${empty customerList}">
                        <h2 style="color: rebeccapurple">Customer List empty</h2>
                    </c:if>
                    <c:if test="${not empty customerList}">
                    <table style="align-items: center;text-align: center;margin-left: 20px" class="table table-success table-striped">
                        <thead>
                        <tr>
                            <th scope="col">id</th>
                            <th scope="col">Name</th>
                            <th scope="col">Birth Day</th>
                            <th scope="col">Gender</th>
                            <th scope="col">Id_card</th>
                            <th scope="col">Phone</th>
                            <th scope="col">Email</th>
                            <th scope="col">Address</th>
                            <th scope="col">action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <jsp:useBean id="customerList" scope="request" type="java.util.List"/>
                        <c:forEach var="customer" items="${customerList}">
                        <tr>
                            <th scope="row">${customer.id}</th>
                            <td>${customer.employeeName}</td>
                            <td>${customer.employeeBirthday}</td>

                            <td><c:choose>
                                <c:when test="${customer.gender==0}">male</c:when>
                                <c:when test="${customer.gender==1}">female</c:when>
                            </c:choose></td>
                            <td>${customer.employeeCard}</td>
                            <td>${customer.employeePhone}</td>
                            <td>${customer.employeeEmail}</td>
                            <td>${customer.address}</td>

                            <td><button class="btn-warning"><a style="text-decoration: none"  href="/customer?action=update&id=${customer.id}">Edit</a></button>
                                <button onclick="onDelete(${customer.id})" data-bs-toggle="modal" data-bs-target="#exampleModal1" type="button" class="btn-danger">Delete</button>
                            </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    </c:if>
                </div>
            </div>

<%--            modal--%>

            <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">

                            <h5 class="modal-title"  id="exampleModalLabel1">Delete Customer</h5>
                            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <form method="post" action="/customer?action=delete">
                            <input type="hidden" name="id" id="idCustomerDel">

                        <div class="modal-body">
                           You are sure delete?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                            <button type="submit" class="btn btn-primary">Yes</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>



            <nav id="navig" aria-label="Page navigation example">
                <ul class="pagination">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">Previous</span>
                        </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <div class="footer">

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script>
    function onDelete(idCustomerDel) {
        document.getElementById("idCustomerDel").value = idCustomerDel;
    }
</script>
</body>
</html>
