package io.loopcamp.jdbc_test.day01;

import java.sql.*;

public class p01_TestOracleConnection {
    public static void main(String[] args) throws SQLException {
        String dbURL = "jdbc:oracle:thin:@44.201.160.241:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";
        Connection connection = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("select * from regions");
        resultSet.next();       //Moves the cursor to the next row
        System.out.println(resultSet.getString("region_id"));
        System.out.println(resultSet.getString("region_name"));
        System.out.println(resultSet.getInt("region_id"));
        resultSet.next();
        System.out.println(resultSet.getString("region_name"));
        System.out.println(resultSet.getString(2));     //We can provide column index as well
        System.out.println();
        while (resultSet.next()) {
            System.out.println(resultSet.getString(1));
            System.out.println(resultSet.getString(2));
        }
        //System.out.println(resultSet.getString(2));     //Rows have been finished, it'll give us an exception
    }
}