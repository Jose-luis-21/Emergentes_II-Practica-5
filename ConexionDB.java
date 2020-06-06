
package com.emergentes.utiles;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConexionDB {
    //static String driver = "com.mysql.jdbc.Driver";
    static String url = "jdbc:mysql://localhost:3306/bd_almacen";
    static String usuario = "root";
    static String password = "";
    
    protected Connection conn = null;

    public ConexionDB() {
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            
            conn = DriverManager.getConnection(url,usuario,password);
        } catch (ClassNotFoundException ex) {
            System.out.println("Error en driver" + ex.getMessage());
        } catch (SQLException ex) {
            System.out.println("Error al conectar" + ex.getMessage());
        }
        
    }
    
    public Connection conectar(){
    return this.conn;
}
    public void desconectar(){
        try {
            conn.close();
        } catch (SQLException ex) {
            System.out.println("Error de SQL" + ex.getMessage());
        }
    }
    
}
