/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.xtec.ioc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author mari
 */
@Controller

public class InstitutController {

    /*
    Crea un ModelAndView amb la vista “institut”i li proporciona la següent informació:
    • cap:  "Programa de gestió de l'institut!"
    • accio: Subtítol. En aquesta funció no se li donarà cap valor. Estarà buit.
    • opcions: Llistat d'opcions que conté  les funcionalitats del programa. Per cada funcionalitat (Afegir, Consultar, Filtrar i Modificar)
    s'ha d'enviar la següent informació:
        ◦ titol: Nom de la funcionalitat, per exemple, «Afegir».
        ◦ desc: Descripció de la funcionalitat, per exemple, "Permet afegir una nova persona a l'institut"
        ◦ url: URL on es redirigirà a l'usuari en el cas que faci clic a aquesta funcionalitat, exemple: «/afegir»
        ◦ icon: Icona que es mostrarà al costat del botó. Exemple: «glyphicon-road glyphicon»
          Aquí teniu una llista d'icones :
           https://www.w3schools.com/bootstrap/bootstrap_ref_comp_glyphs.asp
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView inici(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //Crearem un hashmap per a cada operació a realitzar i un List on emmagatzarem els hasmapOperacions
        Map<String, String> afegir = new HashMap<String, String>();
        Map<String, String> consultar = new HashMap<String, String>();
        Map<String, String> filtrar = new HashMap<String, String>();
        Map<String, String> modificar = new HashMap<String, String>();
        List<Map<String, String>> opcions = new ArrayList<Map<String, String>>();
        ModelAndView modelview = new ModelAndView("institut");

        // guardem la informació de cada operació al seu respectiu hashmap
        afegir.put("titol", "Afegir");
        afegir.put("desc", "Permet afegir una nova persona a l'institut");
        afegir.put("url", "/afegir");
        afegir.put("icon", "glyphicon-road glyphicon");

        consultar.put("titol", "Consultar");
        consultar.put("desc", "Permet consultar la informació d'una persona.");
        consultar.put("url", "/consultar");
        consultar.put("icon", "glyphicon glyphicon-search");

        filtrar.put("titol", "Filtrar");
        filtrar.put("desc", "Permet cercar dins del llistat de persones");
        filtrar.put("url", "/filtrar");
        filtrar.put("icon", "glyphicon glyphicon-list-alt");

        modificar.put("titol", "Modificar");
        modificar.put("desc", "Permet modificar les dades d'una persona");
        modificar.put("url", "/modificar");
        modificar.put("icon", "glyphicon glyphicon-ok");

        //afegim els hasmap al listOpcions
        opcions.add(afegir);
        opcions.add(consultar);
        opcions.add(filtrar);
        opcions.add(modificar);
        modelview.getModelMap().addAttribute("cap", "Programa de gestió de l'Institut");
        modelview.getModelMap().addAttribute("accio", "");
        modelview.getModelMap().addAttribute("opcions", opcions);

        return modelview;
    }

    /*
    Crea un ModelAndView amb la vista “inici” i li proporciona la següent informació:
    • cap:  "Programa de Gestió de l'institut!"
    • accio: Subtítol. En aquest cas el subtítol serà “Afegir una nova persona”.
    • opcions: Llistat d'opcions que  permetrà la creació de les persones. Per cada Tipus (Estudiant, Professor, Pas) s'ha d'enviar la següent informació:
        ◦ titol: Tipus de la persona, per exemple, “Estudiant”.
        ◦ desc: Descripció de la funcionalitat, per exemple, "Permet afegir un estudiant a l'institut.".
        ◦ url: URL on es redirigirà a l'usuari en el cas que faci clic a aquesta funcionalitat, exemple: “/afegir/Estudiant”. 
        És molt important que el nom coincideixi amb el nom de la classe de persona que es vol crear.
        ◦ icon: Icona que es mostrarà al costat del botó.
     */
    @RequestMapping(value = "/afegir", method = RequestMethod.GET)
    public ModelAndView afegirPersona(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //Crearem un HashMap per a cada tipus de persona i un arrayList per emmagatzemar cada persona.
        Map<String, String> estudiant = new HashMap<String, String>();
        Map<String, String> professor = new HashMap<String, String>();
        Map<String, String> pas = new HashMap<String, String>();
        List<Map<String, String>> opcions = new ArrayList<Map<String, String>>();

        //Creem opcions per a cada tipus de persona
        //*******************  ESTUDIANT   ************************************//
        estudiant.put("titol", "Estudiant");
        estudiant.put("desc", "Permet afegir un estudiant a l'institut");
        estudiant.put("url", "/afegir/Estudiant");
        estudiant.put("icon", "glyphicon glyphicon-tent");

        //*******************  PROFESSOR   ************************************//
        professor.put("titol", "Professor");
        professor.put("desc", "Permet afegir un professor a l'institut");
        professor.put("url", "/afegir/Professor");
        professor.put("icon", "glyphicon glyphicon-dashboard");

        //*******************      PAS     ************************************//
        pas.put("titol", "Pas");
        pas.put("desc", "Permet afegir un personal d'administració i serveis a l'institut");
        pas.put("url", "/afegir/Pas");
        pas.put("icon", "glyphicon glyphicon-flash");
        
        //************************************************************************************************//
        
        opcions.add(estudiant);
        opcions.add(professor);
        opcions.add(pas);
        
        ModelAndView modelview = new ModelAndView("institut");
        modelview.getModelMap().addAttribute("cap", "Programa de gestió de l'Institut");
        modelview.getModelMap().addAttribute("accio", "Afegir una nova persona");
        modelview.getModelMap().addAttribute("opcions", opcions);

        return modelview;
    }

}
