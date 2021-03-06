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
            <p>Nguyễn Quang Bảo</p>
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
                <li>  <a href="">Add new Employee</a></li>
                <li><a href="">Display Employee</a></li>
                <li><a href="">Edit Employee</a></li>
            </ul>
        </div>
        <div class="body-right ">
            <div class="text">
                <h3>Information Employee</h3>
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
                <table style="align-items: center;text-align: center;margin-left: 20px" class="table table-success table-striped">
                    <thead>
                    <tr>
                        <th scope="col">Number</th>
                        <th scope="col">Name</th>
                        <th scope="col">Birth Day</th>
                        <th scope="col">Gender</th>
                        <th scope="col">Id_card</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Email</th>
                        <th scope="col">Education_degree id</th>
                        <th scope="col">Position</th>
                        <th scope="col">Division</th>
                        <th scope="col">Action</th>

                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>01/04/2000</td>
                        <td>Male</td>
                        <td>2797979</td>
                        <td>0979779779</td>
                        <td>quangbao79799@gmail.com</td>
                        <td>Đại học</td>
                        <td>Giám đốc</td>
                        <td>Sale Marketing</td>
                        <td><button class="btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal1">Edit</button>
                            <button  class="btn-warning" data-bs-toggle="modal" data-bs-target="#exampleModal">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Mark</td>
                        <td>01/04/2000</td>
                        <td>Male</td>
                        <td>2797979</td>
                        <td>0979779779</td>
                        <td>quangbao79799@gmail.com</td>
                        <td>Đại học</td>
                        <td>Giám đốc</td>
                        <td>Sale Marketing</td>
                        <td><button class="btn-danger">Edit</button>
                            <button  class="btn-warning">Delete</button>
                        </td>
                    </tr>
                </table>
            </div>

            <%--            modal--%>

            <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel1">Delete Employee</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            You are sure delete?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                            <button type="button" class="btn btn-primary">Yes</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Edit Employee</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="mb-3">
                                    <input type="text" class="form-control" placeholder="Employee_name" >
                                </div>
                                <div class="mb-3">
                                    <input type="text" class="form-control" placeholder="Employee_id_card"  >
                                </div>
                                <div class="mb-3">
                                    <input type="text" class="form-control" placeholder="Employee_phone"  >
                                </div>

                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Saves</button>
                        </div>
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

</body>
</html>
