/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication2;

/**
 *
 * @author myria
 */
public class Carre {
    private double longueur;
    //constructeur vide
public Carre()
{
    longueur=0;
}
// constructeur qui initialise la longueur d'un côté du carré
public Carre(double l)
{
    longueur = l;
}
//méthode qui retourne le périmètre du carré
public double perimetre()
{
    return longueur*4;
}
//méthode qui retourne l'aire du carré
public double aire()
{
    return longueur*longueur;
}
//méthode qui affiche la longueur du carré
public void affiche()
{
    System.out.println("Un carré de "+longueur+"cm");
}

}
