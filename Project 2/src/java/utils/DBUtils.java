/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author MSI
 */
public class DBUtils implements Serializable {

    public static Connection makeConnection() throws NamingException, SQLException, ClassNotFoundException {
        //1.Load Driver

        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//        //2.Create String Con
        String url = "jdbc:sqlserver://localhost:1433;databaseName=Blogs;instanceName=SQLEXPRESS";
//        //3. Open Connection
        Connection con = DriverManager.getConnection(url,"sa","25041999");
//        return con;
//        //1. lay context hien hanh: get current context    
//        Context context = new InitialContext();
//
//        //2. lay context o phia server: get server context
//        Context tomcatCtx = (Context) context.lookup("java:comp/env");
//
//        //3. get data source
//        DataSource ds = (DataSource) tomcatCtx.lookup("DS007");
//
//        //4. get connection
//        
//        Connection con = ds.getConnection();
        return con;
    }
}
