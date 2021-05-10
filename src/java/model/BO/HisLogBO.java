/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.BO;

import java.sql.SQLException;
import java.util.ArrayList;
import model.BEAN.LoggingTime;
import model.DAO.HisLogDAO;
import model.DAO.loadLoggingTimeDAO;

/**
 *
 * @author tranv
 */
public class HisLogBO {
    HisLogDAO logtimeDAO = new HisLogDAO();
    public ArrayList<LoggingTime> loadLogTimeBO() throws SQLException {
//        ArrayList<LoggingTime> sortNewArray = logtimeDAO.loadLogTime();
//        Collections.reverse(sortNewArray);
//        return sortNewArray;
        return logtimeDAO.loadLogTime();
    }
}
