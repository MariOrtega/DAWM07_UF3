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
public class Professor extends Persona{
    private String titulacio;
    private String departament;

    public Professor() {
    }

    public Professor(String titulacio, String departament, String nom, String nif, String nss, long telefon) {
        super(nom, nif, nss, telefon);
        this.titulacio = titulacio;
        this.departament = departament;
    }

    public String getTitulacio() {
        return titulacio;
    }

    public void setTitulacio(String titulacio) {
        this.titulacio = titulacio;
    }

    public String getDepartament() {
        return departament;
    }

    public void setDepartament(String departament) {
        this.departament = departament;
    }
    
    
    
}
