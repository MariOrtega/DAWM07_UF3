/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cat.xtec.ioc.repository.impl;

import cat.xtec.ioc.domain.Estudiant;
import cat.xtec.ioc.domain.Professor;
import cat.xtec.ioc.domain.Pas;
import cat.xtec.ioc.domain.Persona;
import cat.xtec.ioc.repository.PersonalRepository;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.stereotype.Repository;

/**
 *
 * @author mari
 */

@Repository
public class AMemoriaPersonalRepository implements PersonalRepository{
    
    private List<Persona> persones=new ArrayList<Persona>();
    
    /**
     * S'ha d'inicialitzar la llista amb 3 persones de cadascun dels tipus.
     */
  public  AMemoriaPersonalRepository(){
       Persona est1=new Estudiant("Albert Ribera","1111111A","1111111/1",93111111,1979,2005);
       Estudiant est2=new Estudiant("Pablo Casado","222222B","1112222/2",912222222,1978,2003);
       Estudiant est3=new Estudiant("Pablo Iglesias","333333C","113333/2",9133333,1976,2010);
       
       Professor prof1=new Professor("Gabriel Garcia Marquez","111111G","111111/P",6291111,"Periodisme","Literatura");
       Professor prof2=new Professor("Albert Einstein","123456E","1234111/E",987654,"Ciencies","Física");
       Professor prof3= new Professor("Pep Guardiola", "333333P","333333/P", 123987,"Educació física", "Gimnàstica");
       
       Pas pas1=new Pas("Miquel Gonzalez", "6666666M","666666/M",33333343,"Conserge");
       Pas pas2=new Pas("Paco Perez", "111212P","111212/P",121212,"Vigilant");
       Pas pas3=new Pas("Maria Puig","343434M","343434/M",34343434,"Secretaria");
        
       
       persones.add(est1);
       persones.add(est2);
       persones.add(est3);
       
       persones.add(prof1);
       persones.add(prof2);
       persones.add(prof3);
       
       persones.add(pas1);
       persones.add(pas2);
       persones.add(pas3);
   }

   /**
    * Afegeix una persona al llistat de persones
    * @param persona 
    */
    public void afegirPersona(Persona persona) {
       persones.add(persona);
    }

    /**
     * Retorna la persona que tingui aquest nif. En el cas que no es trobi
     * la correspondència, es llança una excepció que indiqui que no s'ha trobat.
     * @param nif
     * @return 
     * 
     */
    public Persona obtenirPersonaPerNif(String nif) {
        Persona person=null;
        for(Persona p: persones){
        if(p!=null && p.getNif() !=null && p.getNif().equals(nif)){
            person=p;
           
            break;
        }
    } if(person==null){
         
        throw new IllegalArgumentException ("La persona amb NIF: "+nif+" no es troba al llistat de l'institut");
    }
     return person;   
    }

    
    /**
     * Ha de respondre a la consulta de filtres que s'ha definit als casos d'ús.  
     * Els criteris són: el tipus de persona (Professor, Estudiant, Pas)
     * i la província (els dos primers dígits del nss). Cal que compleixi els dos requeriments.
        → Per realitzar aquest mètode podeu ajudar-vos de la funció:
     Class.forName(“nomPaquet.nomClasse).isInstance(Object)
     Aquesta funció comprova que el objecte Object sigui de la classe “nomPaquet.nomClasse”
     * @param filterParams
     * @return 
     */
    public Set<Persona> obtenirPersonaPerFiltre(Map<String, List<String>> filterParams) {
        Set<Persona> tipusPersona=new HashSet<Persona>();
        Set<Persona> nssPersona=new HashSet<Persona>();
        Set<String> criterias =filterParams.keySet();
        
        
        if(criterias.contains("persona")){           
            for(Persona p:persones){
                try {
                    if(Class.forName("cat.xtec.ioc.domain."+filterParams.get("persona").get(0)).isInstance(p))
                    {
                        tipusPersona.add(p);
                    }
                        } catch (ClassNotFoundException ex) {
                    Logger.getLogger(AMemoriaPersonalRepository.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            
        }
        
        if(criterias.contains("provincia")){
            for(Persona p: persones){
                String digits=p.getNss().charAt(0)+""+p.getNss().charAt(1);
                String digits_provincia=filterParams.get("provincia").get(0).charAt(0)+""+filterParams.get("provincia").get(0).charAt(1);
                if(digits.equals(digits_provincia)){
                    nssPersona.add(p);
                    
                }
            }
        }
        tipusPersona.retainAll(nssPersona);
        return tipusPersona;
        
    }

    
    /**
     * Si trobem a la llista una persona amb el mateix nif que el de la persona passada com a paràmetre,
     * l'eliminem de la llista i després inserim la persona passada com a paràmetre
     * @param p 
     */
    public void modificarPersona(Persona p) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   
    
}
