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

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="customer.css" type="text/css">
</head>
<body>
<div class="container">
    <div class="header ">
        <div class="header-left">
            <div class="logo">
                <img src="img/logo.png" alt="logo furama">
            </div>
        </div>
        <div class="header-right ">
            <p>Nguyễn Quang Bảo</p>
        </div>
    </div>
    <div class="Nav">
        <div class="Menu">
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
    <div class="body">
        <div class="body-left">
            <ul>
                <li><a href="">Add new customer</a></li>
                <li><a href="http://localhost:8080/DisplayCustomer.jsp">Display customer</a></li>
                <li><a href="">Edit customer</a></li>
            </ul>
        </div>
        <div class="body-right">
            <div class="text">
                <h3>Add New Customer</h3>
            </div>
            <div>
                <form class="infor-customer">
                    <input type="text" placeholder="Customer name" >
                    <input type="text" placeholder="Customer birth day" >
                    <div class="radio">
                        <input type="radio"
                               name="contact" value="Nam" checked>
                        <label >Male</label>

                        <input type="radio"
                               name="contact" value="Nữ">
                        <label>Female</label>
                    </div>
                    <input type="text" placeholder="Customer id card" >
                    <input type="text" placeholder="Customer phone" >
                    <input type="email" placeholder="Customer email" >
                    <input type="text" placeholder="Customer dia chi" >
                    <select style="width: 50%;margin-left: 20px;margin-bottom: 30px;font-family: 'Times New Roman', Times, serif;">
                        <option value="volvo">Diamond</option>
                        <option value="saab">Platinium</option>
                        <option value="opel">Gold</option>
                        <option value="audi">Silver</option>
                    </select>
                </form>
            </div>
            <div class="add-new"><button >Add</button></div>
        </div>
    </div>
    <div class="footer">

        <p>footer</p>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>
