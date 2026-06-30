package uef.edu.vn.dao;

import uef.edu.vn.config.DBConfig;
import java.sql.Connection;
import java.sql.SQLException;

public class BorrowDAO {
    protected Connection openConnection() throws SQLException {
        return DBConfig.getConnection();
    }
}
