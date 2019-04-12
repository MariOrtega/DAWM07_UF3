/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.xtec.ioc.repository;

import cat.xtec.ioc.domain.Persona;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author mari
 */
public interface PersonalRepository {
    void afegirPersona(Persona persona);            
    Persona obtenirPersonaPerNif(String nif);    
    Set<Persona> obtenirPersonaPerFiltre(Map<String, List<String>> filterParams);    
    void modificarPersona(Persona p);   
}
