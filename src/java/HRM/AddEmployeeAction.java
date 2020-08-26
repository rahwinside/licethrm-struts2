/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HRM;

import com.opensymphony.xwork2.Action;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author rah
 */
public class AddEmployeeAction implements Action {

    String employeeID;
    String employeeName;
    String employeeDept;
    String employeePhone;
    String employeeEmail;

    public String getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(String employeeID) {
        this.employeeID = employeeID;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getEmployeeDept() {
        return employeeDept;
    }

    public void setEmployeeDept(String employeeDept) {
        this.employeeDept = employeeDept;
    }

    public String getEmployeePhone() {
        return employeePhone;
    }

    public void setEmployeePhone(String employeePhone) {
        this.employeePhone = employeePhone;
    }

    public String getEmployeeEmail() {
        return employeeEmail;
    }

    public void setEmployeeEmail(String employeeEmail) {
        this.employeeEmail = employeeEmail;
    }

    @Override
    public String execute() throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/employees?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", "root", "vcvra-1002");

        try {
            try {
                Statement st = con.createStatement();
                int value = st
                        .executeUpdate("INSERT INTO employee_details "
                                + "VALUES('"
                                + employeeID
                                + "','"
                                + employeeName
                                + "','"
                                + employeeDept
                                + "','"
                                + employeePhone
                                + "','"
                                + employeeEmail + "')");
                System.out.println("1 row affected" + value);
                con.close();
                if (value > 0) {
                    return SUCCESS;
                } else {
                    return ERROR;
                }
            } catch (SQLException ex) {
                System.out.println("SQL statement is not executed!" + ex);
                return ERROR;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        }
    }
}
