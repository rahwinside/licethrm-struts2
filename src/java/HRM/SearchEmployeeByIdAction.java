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
public class SearchEmployeeByIdAction implements Action {

    String employeeID;
    ArrayList<EmployeeAdapter> employeeList = new ArrayList<EmployeeAdapter>();

    public String getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(String employeeID) {
        this.employeeID = employeeID;
    }
    

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

            PreparedStatement ps = con.prepareStatement("SELECT * FROM employee_details WHERE employeeID = '" + this.employeeID + "'");
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                EmployeeAdapter employee = new EmployeeAdapter();
                employee.setEmployeeID(rs.getString(1));
                employee.setEmployeeName(rs.getString(2));
                employee.setEmployeeDept(rs.getString(3));
                employee.setEmployeePhone(rs.getString(4));
                employee.setEmployeeEmail(rs.getString(5));
                employeeList.add(employee);
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "success";
    }
}
