/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.xtec.ioc.service.impl;

import cat.xtec.ioc.domain.Persona;
import cat.xtec.ioc.repository.PersonalRepository;
import cat.xtec.ioc.service.PersonalService;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author mari
 */

@Service
public class PersonalServiceImpl implements PersonalService{
    @Autowired
    private PersonalRepository personalRepository;

    public void afegirPersona(Persona persona) {
       personalRepository.afegirPersona(persona);
    }

    public Persona obtenirPersonaPerNif(String nif) {
     return   personalRepository.obtenirPersonaPerNif(nif);
    }

    public Set<Persona> obtenirPersonaPerFiltre(Map<String, List<String>> filterParams) {
        return personalRepository.obtenirPersonaPerFiltre(filterParams);
    }

    public void modificarPersona(Persona p) {
        personalRepository.modificarPersona(p);
    }
    
}
