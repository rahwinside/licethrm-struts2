<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
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
        <link href="./HRM/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link href="./HRM/assets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
    </head>

    <body>
        <div class="wrapper ">
            <div class="sidebar" data-color="white" data-active-color="danger">
                <div class="logo">
                    Built with Struts2
                </div>
                <div class="sidebar-wrapper">
                    <ul class="nav">
                        <li class="active ">
                            <a href="javascript:;">
                                <!--              <i class="nc-icon nc-bank"></i>-->
                                <p>Add Employee</p>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <!--              <i class="nc-icon nc-diamond"></i>-->
                                <p>Search Employee</p>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <!--              <i class="nc-icon nc-pin-3"></i>-->
                                <p>All Employees</p>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
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
                            <h3 class="description">Add an employee</h3>
                            <s:form action="addemployee">
                                <s:textfield name="employeeID" cssClass="input-group-text" label="Employee ID" style="text-align: left"/>
                                <s:textfield name="employeeName" cssClass="input-group-text" label="Employee Name" style="text-align: left"/>
                                <s:textfield name="employeeDept" cssClass="input-group-text" label="Department" style="text-align: left"/>
                                <s:textfield name="employeePhone" cssClass="input-group-text" label="Phone" style="text-align: left"/>
                                <s:textfield name="employeeEmail" cssClass="input-group-text" label="Email ID" style="text-align: left"/>
                                <s:submit value="Add Employee"></s:submit>
                            </s:form>
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
        <script src="./HRM/assets/js/core/jquery.min.js"></script>
        <script src="./HRM/assets/js/core/popper.min.js"></script>
        <script src="./HRM/assets/js/core/bootstrap.min.js"></script>
        <script src="./HRM/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
    </body>

</html>
