/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.BEAN;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class LoggingTime {

    private int MaNV;
    private Date loggingtime;
    private String ten;

    public LoggingTime() {

    }

    public LoggingTime(int MaNV, Date loggingtime, String ten) {
        this.MaNV = MaNV;
        this.loggingtime = loggingtime;
        this.ten = ten;
    }

    public int getMaNV() {
        return MaNV;
    }

    public int getDay() {
        int d = this.loggingtime.getDate();
        return d;
    }

    public int getYear() {
        int y;
        y = this.loggingtime.getYear() + 1900;
        return y;
    }

    public int getMonth() {
        int month;
        month = this.loggingtime.getMonth() + 1;
        return month;
    }

    public int getHours() {
        int hours;
        hours = this.loggingtime.getHours();
        return hours;
    }

      public int getMinutes() {
        int mins;
        mins = this.loggingtime.getMinutes();
        return mins;
    }
    public String getTimeStr() {
        DateFormat dateFormat = new SimpleDateFormat("hh:mm");
        String strDate = dateFormat.format(this);
        return strDate;

    }

    public void setMaNV(int MaNV) {
        this.MaNV = MaNV;
    }

    public Date getLoggingtime() {
        return loggingtime;
    }

    public String getLoggingtimeString() {

        DateFormat dateFormat = new SimpleDateFormat("hh:mm a dd/MM/YYYY ");
        String strDate = dateFormat.format(this.loggingtime);
        return strDate;
    }

    public void setLoggingtime(Date loggingtime) {
        this.loggingtime = loggingtime;
    }

    public void setLoggingtime(String loggingtime) throws ParseException {
        SimpleDateFormat formatter6 = new SimpleDateFormat("YYYY-MM-DD hh:mm:ss");
        Date date6 = formatter6.parse(loggingtime);
        this.loggingtime = date6;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

}
