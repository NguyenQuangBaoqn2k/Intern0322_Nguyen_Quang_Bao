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
                <li><a href="">Add new Contract Details</a></li>
                <li><a href="">Display Contract Details</a></li>
            </ul>
        </div>
        <div class="body-right">
            <div class="text">
                <h3>Add New Customer Details</h3>
            </div>
            <div>
                <form class="infor-customer">
                    <input type="text" placeholder="Contract detail id" >
                    <input type="text" placeholder="Contract id" >
                    <input type="text" placeholder="Attach service id" >
                    <input type="text" placeholder="quanlity" >
                </form>
            </div>
            <div class="add-new"><button >Add</button></div>
        </div>
    </div>
    <div class="footer">

        <p>footer</p>
    </div>
</div>