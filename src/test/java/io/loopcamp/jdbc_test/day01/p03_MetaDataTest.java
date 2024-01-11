package io.loopcamp.jdbc_test.day01;

import java.sql.*;
import java.util.*;

public class p03_MetaDataTest {
    public static void main(String[] args) throws SQLException {
        String dbURL = "jdbc:oracle:thin:@44.201.160.241:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";
        Connection connection = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet resultSet = statement.executeQuery("select * from employees");
        /**
         * Database Meta Data - will give us information about the database
         * We use connection reference to make DatabaseMetaData reference
         */
        DatabaseMetaData databaseMetaData = connection.getMetaData();
        System.out.println(databaseMetaData.getUserName());
        System.out.println(databaseMetaData.getDatabaseProductName());
        System.out.println(databaseMetaData.getDatabaseProductVersion());
        /**
         * ResultSet Meta Data - will help us with the upper side of the table
         * We use resultSet reference to make ResultSetMetaData reference
         */
        ResultSetMetaData resultSetMetaData = resultSet.getMetaData();
        System.out.println(resultSetMetaData.getColumnCount());
        System.out.println(resultSetMetaData.getColumnName(1));
        System.out.println(resultSetMetaData.getColumnDisplaySize(1));
        for (int i = 1; i <= resultSetMetaData.getColumnCount(); i++) {
            System.out.println(resultSetMetaData.getColumnName(i));
        }
        System.out.println();
        //--------------------------------------------------------------------------------------------------------------
        List<Map<String, Object>> allPersons = new ArrayList<>();
        while (resultSet.next()) {
            Map<String, Object> eachPerson = new LinkedHashMap<>();
            for (int i = 1; i <= resultSetMetaData.getColumnCount(); i++) {
                //System.out.print(resultSet.getString(resultSetMetaData.getColumnName(i)) + " --> ");
                eachPerson.put(resultSetMetaData.getColumnName(i), resultSet.getString(i));
            }
            allPersons.add(eachPerson);
            //System.out.println(eachPerson);
            //System.out.println();
        }
        System.out.println(allPersons);
        //System.out.println(allPersons.get(0));
        System.out.println(allPersons.getFirst());      //Does the exact same thing with the line above
        //System.out.println(allPersons.get(allPersons.size() - 1));
        System.out.println(allPersons.getLast());       ////Does the exact same thing with the line above
        System.out.println(allPersons.get(9).get("PHONE_NUMBER"));
    }
}