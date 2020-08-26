<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>
            LICET HRM
        </title>
        <!--     Fonts and icons     -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
        <!-- CSS Files -->
        <link href="./assets/css/bootstrap.min.css" rel="stylesheet" />
        <link href="./assets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
    </head>

    <body class="">
        <div class="wrapper ">
            <div class="sidebar" data-color="white" data-active-color="danger">
                <div class="logo">
                    Built with Struts2
                </div>
                <div class="sidebar-wrapper">
                    <ul class="nav">
                        <li>
                            <a href="addemployeepage">
                                <!--              <i class="nc-icon nc-bank"></i>-->
                                <p>Add Employee</p>
                            </a>
                        </li>
                        <li class="active ">
                            <a href="searchemployeepage">
                                <!--              <i class="nc-icon nc-diamond"></i>-->
                                <p>Search Employee</p>
                            </a>
                        </li>
                        <li>
                            <a href="allemployeepage">
                                <!--              <i class="nc-icon nc-pin-3"></i>-->
                                <p>All Employees</p>
                            </a>
                        </li>
                        <li>
                            <a href="deleteemployeepage">
                                <!--              <i class="nc-icon nc-pin-3"></i>-->
                                <p>Delete Employee</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="main-panel" style="height: 100vh;">
                <!-- Navbar -->
                <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
                    <div class="navbar-wrapper">
                        <p class="navbar-brand">LICET HR Management</p>
                        <p></p>
                    </div>
                </nav>
                <!-- End Navbar -->
                <div class="content">
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="description">Search Employee</h3>
                            <div class="row">
                                <div class="col-sm">
                                    <s:form action="searchemployeebyid">
                                        <h5 class="description">Search by Employee ID</h5>
                                        <s:textfield name="employeeID" cssClass="input-group-text" label="Employee ID" style="text-align: left"/>
                                        <s:submit value="Search by ID"></s:submit>
                                    </s:form>
                                </div>
                                <div class="col-sm">
                                    <s:form action="searchemployeebyname">
                                        <h5 class="description">Search by Employee Name</h5>
                                        <s:textfield name="employeeName" cssClass="input-group-text" label="Employee Name" style="text-align: left"/>
                                        <s:submit value="Search by name"></s:submit>
                                    </s:form>
                                </div>
                            </div>
                            <br/>
                            <table class="table-bordered table-striped" style="width:100%">
                                <tr>
                                    <th>Employee ID</th>
                                    <th>Employee Name</th>
                                    <th>Department</th>
                                    <th>Phone</th>
                                    <th>Email ID</th>
                                </tr>
                                <s:iterator value="employeeList">
                                    <tr>
                                        <fieldset>
                                            <td><s:property value="employeeID"/></td>
                                            <td><s:property value="employeeName"/></td>  
                                            <td><s:property value="employeeDept"/></td>  
                                            <td><s:property value="employeePhone"/></td>
                                            <td><s:property value="employeeEmail"/></td>  
                                        </fieldset>  
                                    </tr>
                                </s:iterator>  
                            </table>
                        </div>
                    </div>
                </div>
                <footer class="footer" style="position: absolute; bottom: 0; width: -webkit-fill-available;">
                    <div class="container-fluid">
                        <div class="row">
                            <nav class="footer-nav">
                                <ul>
                                    <li><a href="https://www.github.com/rahwinside" target="_blank">(c) rahwinside</a></li>
                                </ul>
                            </nav>
                            <div class="credits ml-auto"> </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <!--   Core JS Files   -->
        <script src="./assets/js/core/jquery.min.js"></script>
        <script src="./assets/js/core/popper.min.js"></script>
        <script src="./assets/js/core/bootstrap.min.js"></script>
        <script src="./assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
    </body>

</html>
