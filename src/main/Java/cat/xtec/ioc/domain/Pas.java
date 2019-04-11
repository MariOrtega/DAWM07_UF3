/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.xtec.ioc.domain;

/**
 *
 * @author mari
 */
public class Pas extends Persona{
 private String carrec;

    public Pas() {
    }

    public String getCarrec() {
        return carrec;
    }

    public void setCarrec(String carrec) {
        this.carrec = carrec;
    }
 
 
 
    public Pas(String carrec, String nom, String nif, String nss, long telefon) {
        super(nom, nif, nss, telefon);
        this.carrec = carrec;
    }

    
   
}
