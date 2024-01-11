package io.loopcamp.jdbc_test.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.*;

public class p04_ListOfMap {
    String dbURL = "jdbc:oracle:thin:@44.201.160.241:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";
    @Test
    public void actual() throws SQLException {
        Connection c = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
        Statement s = c.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = s.executeQuery("select * from employees");
        ResultSetMetaData rsmd = rs.getMetaData();
        rs.next();
        Map<String, Object> actualMapRow1 = new HashMap<>();
        actualMapRow1.put(rsmd.getColumnName(2), rs.getString(rsmd.getColumnName(2)));
        actualMapRow1.put(rsmd.getColumnName(3), rs.getString(rsmd.getColumnName(3)));
        actualMapRow1.put(rsmd.getColumnName(8), rs.getString(rsmd.getColumnName(8)));
        rs.next();
        Map<String, Object> actualMapRow2 = new HashMap<>();
        actualMapRow2.put(rsmd.getColumnName(2), rs.getString(rsmd.getColumnName(2)));
        actualMapRow2.put(rsmd.getColumnName(3), rs.getString(rsmd.getColumnName(3)));
        actualMapRow2.put(rsmd.getColumnName(8), rs.getString(rsmd.getColumnName(8)));
        List<Map<String, Object>> actualList = new ArrayList<>();
        actualList.add(actualMapRow1);
        actualList.add(actualMapRow2);
        System.out.println(actualList);
        rs.close();
        s.close();
        c.close();
    }
    @Test
    public void expected() {
        Map<String, Object> expectedMapRow1 = new HashMap<>();
        expectedMapRow1.put("FIRST_NAME", "Steven");
        expectedMapRow1.put("LAST_NAME", "King");
        expectedMapRow1.put("SALARY", 24000);
        Map<String, Object> expectedMapRow2 = new HashMap<>();
        expectedMapRow2.put("FIRST_NAME", "Neena");
        expectedMapRow2.put("LAST_NAME", "Yang");
        expectedMapRow2.put("SALARY", 17000);
        List<Map<String, Object>> expectedList = new ArrayList<>();
        expectedList.add(expectedMapRow1);
        expectedList.add(expectedMapRow2);
        System.out.println(expectedList);
    }
}