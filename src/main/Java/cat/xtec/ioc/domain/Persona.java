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
public class Persona {
    private String nom;
    private String nif;
   private String nss;
   private long telefon;

    public Persona(String nom, String nif, String nss, long telefon) {
        this.nom = nom;
        this.nif = nif;
        this.nss = nss;
        this.telefon = telefon;
    }

    public Persona() {
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getNif() {
        return nif;
    }

    public void setNif(String nif) {
        this.nif = nif;
    }

    public String getNss() {
        return nss;
    }

    public void setNss(String nss) {
        this.nss = nss;
    }

    public long getTelefon() {
        return telefon;
    }

    public void setTelefon(long telefon) {
        this.telefon = telefon;
    }
   
 
    
}
