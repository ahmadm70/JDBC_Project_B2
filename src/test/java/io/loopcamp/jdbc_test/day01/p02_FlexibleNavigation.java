package io.loopcamp.jdbc_test.day01;

import java.sql.*;

public class p02_FlexibleNavigation {
    public static void main(String[] args) throws SQLException {
        String dbURL = "jdbc:oracle:thin:@44.201.160.241:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";
        Connection connection = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        //Line above lets us scroll the cursor dynamically (being able to jump directly to the certain rows)
        ResultSet resultSet = statement.executeQuery("select * from employees");
        resultSet.next();
        System.out.println(resultSet.getString("first_name"));
        System.out.println(resultSet.getString(5));
        while (resultSet.next()) {
            System.out.println(resultSet.getDouble("salary"));
        }
        System.out.println();
        resultSet.first();      //Moves the cursor to the first row
        System.out.println(resultSet.getString("first_name"));
        resultSet.absolute(9);      //Moves the cursor to the given row
        System.out.println(resultSet.getString("first_name"));
        System.out.println(resultSet.getString("last_name"));
        System.out.println(resultSet.getString("salary"));
        resultSet.last();       //Moves the cursor to the last row
        System.out.println(resultSet.getString("first_name"));
        System.out.println();
        resultSet.beforeFirst();
        //Helps us to go very beginning, even before the first row, so we can use next() and get first row information as well
        while (resultSet.next()) {
            System.out.println(resultSet.getString("phone-number"));
        }
    }
}