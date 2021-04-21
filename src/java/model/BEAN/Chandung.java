/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.BEAN;

public class Chandung {
    private int chandungid;
    private int manv;
    private String duongdan;

    public Chandung(int chandungid, int manv, String duongdan) {
        this.chandungid = chandungid;
        this.manv = manv;
        this.duongdan = duongdan;
    }

    public int getChandungid() {
        return chandungid;
    }

    public void setChandungid(int chandungid) {
        this.chandungid = chandungid;
    }

    public int getManv() {
        return manv;
    }

    public void setManv(int manv) {
        this.manv = manv;
    }

    public String getDuongdan() {
        return duongdan;
    }

    public void setDuongdan(String duongdan) {
        this.duongdan = duongdan;
    }
    
}
