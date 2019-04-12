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
public class Estudiant extends Persona{
    private int anyMatricula;
    private int anyNeix;

    public Estudiant(String nom,String nif,String nss, long telefon,  int anyNeix, int anyMatricula) {
        super(nom,nif,nss,telefon);
        this.anyMatricula = anyMatricula;
        this.anyNeix = anyNeix;
    }

    public Estudiant() {
    }

    public int getAnyMatricula() {
        return anyMatricula;
    }

    public void setAnyMatricula(int anyMatricula) {
        this.anyMatricula = anyMatricula;
    }

    public int getAnyNeix() {
        return anyNeix;
    }

    public void setAnyNeix(int anyNeix) {
        this.anyNeix = anyNeix;
    }
    
    
    
    
    
}
