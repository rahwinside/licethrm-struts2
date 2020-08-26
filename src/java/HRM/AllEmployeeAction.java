/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HRM;

import com.opensymphony.xwork2.Action;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author rah
 */
public class AllEmployeeAction implements Action {

    ArrayList<EmployeeAdapter> employeeList = new ArrayList<EmployeeAdapter>();

    public ArrayList<EmployeeAdapter> getEmployeeList() {
        return employeeList;
    }

    public void setEmployeeList(ArrayList<EmployeeAdapter> employeeList) {
        this.employeeList = employeeList;
    }

    @Override
    public String execute() throws Exception {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/employees?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", "root", "vcvra-1002");

            PreparedStatement ps = con.prepareStatement("SELECT * FROM employee_details");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                EmployeeAdapter employee = new EmployeeAdapter();
                employee.setEmployeeID(rs.getString(1));
                employee.setEmployeeName(rs.getString(2));
                employee.setEmployeeDept(rs.getString(3));
                employee.setEmployeePhone(rs.getString(4));
                employee.setEmployeeEmail(rs.getString(4));
                employeeList.add(employee);
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "success";
    }
}

class EmployeeAdapter {

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
}
