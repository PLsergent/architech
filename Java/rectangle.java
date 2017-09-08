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
public class Rectangle {

    private double longueur;
    private double largeur;
    //constructeur vide
public Rectangle()
{
    longueur=0;
    largeur=0;
}
// constructeur qui initialise la longueur d'un côté du carré
public Rectangle(double l, double larg)
{
    longueur = l;
    largeur = larg;
}
//méthode qui retourne le périmètre du carré
public double perimetre()
{
    return (longueur+largeur)*2;
}
//méthode qui retourne l'aire du carré
public double aire()
{
    return longueur*largeur;
}
//méthode qui affiche la longueur du carré
public void affiche()
{
    System.out.println("Un rectangle de "+longueur+"cm sur "+largeur+ " cm");
}

}
