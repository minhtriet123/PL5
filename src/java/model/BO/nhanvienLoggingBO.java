/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.BO;

import java.sql.SQLException;
import java.util.ArrayList;
import model.BEAN.LoggingTime;
import model.DAO.nhanvienLoggingDAO;

/**
 *
 * @author tranv
 */
public class nhanvienLoggingBO {
    nhanvienLoggingDAO nvloggingdao = new nhanvienLoggingDAO();
    public ArrayList<LoggingTime> nvloggingBO(String MaNV) throws SQLException {
        return nvloggingdao.loadLogTimeNV(MaNV);
    }
    
}
