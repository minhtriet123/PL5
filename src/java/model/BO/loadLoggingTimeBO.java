/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.BO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import model.BEAN.LoggingTime;
import model.DAO.loadLoggingTimeDAO;

public class loadLoggingTimeBO {

    loadLoggingTimeDAO logtimeDAO = new loadLoggingTimeDAO();

    public ArrayList<LoggingTime> loadLogTimeBO() throws SQLException {
//        ArrayList<LoggingTime> sortNewArray = logtimeDAO.loadLogTime();
//        Collections.reverse(sortNewArray);
//        return sortNewArray;
        return logtimeDAO.loadLogTime();
    }
}
