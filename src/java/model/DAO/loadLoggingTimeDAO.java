/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.DAO;

import DBprovider.DBconn;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.BEAN.LoggingTime;

/**
 *
 * @author tranv
 */
public class loadLoggingTimeDAO {

    public ArrayList<LoggingTime> loadLogTime() throws SQLException {
        ArrayList<LoggingTime> result = new ArrayList<LoggingTime>();
        DBconn.connection = DBconn.getConnection();
        String SQL_Query_String = "SELECT `logging`.`stt`, `logging`.`MaNV`,`nhanvien`.`HoTen`,`logging`.`timelogging` FROM dbchamcong.logging\n"
                + "INNER JOIN dbchamcong.nhanvien  ON `logging`.`MaNV`=`nhanvien`.`MaNV`\n"
                + "ORDER BY stt DESC LIMIT 10;";
        if (DBconn.connection != null) {
            Statement stmt = DBconn.connection.createStatement();
            ResultSet rs = stmt.executeQuery(SQL_Query_String);
            while (rs.next()) {
                LoggingTime lg = new LoggingTime();
                lg.setLoggingtime(rs.getTimestamp("timelogging"));
                lg.setTen(rs.getString("HoTen"));
                lg.setMaNV(rs.getInt("MaNV"));
                result.add(lg);
            }
        }
        return result;
    }
}
