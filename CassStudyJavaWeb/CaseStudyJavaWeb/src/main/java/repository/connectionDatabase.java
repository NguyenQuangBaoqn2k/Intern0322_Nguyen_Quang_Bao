package repository;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class  connectionDatabase {
    private  String db_url = "jdbc:mysql://localhost:3306/ql_nghiduong";
    private  String userName = "root";
    private  String password = "123456";
    private Connection connection;

    public connectionDatabase(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.connection = DriverManager.getConnection(db_url,userName,password);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }



    public Connection getConnection(){
        return connection;
    }
}

