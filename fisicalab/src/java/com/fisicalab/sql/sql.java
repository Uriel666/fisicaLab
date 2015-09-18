
package com.fisicalab.sql;
import java.sql.Connection;
import java.sql.DriverManager;
public class sql {
    public static Connection connect(String url, String user, String pass){
    Connection con = null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, user, pass);
    }catch(Exception e){
        e.printStackTrace();
    }
    return con;
}
}
