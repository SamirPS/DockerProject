#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Oct 20 19:41:49 2018
@author: samir
"""

import psycopg2


connexion =  psycopg2.connect(user = "postgres",
                                host="db",
                                port=5432,
                                password="test",
                                database = "postgres")
curseur = connexion.cursor()


def renvoie_admission():
    
    curseur.execute("SELECT DISTINCT Admission FROM EcoleS")
    return [
        resultat[0] for resultat in curseur.fetchall()
       
    ]


def renvoie_specialites():
    curseur.execute("SELECT DISTINCT NomSpe FROM Specialite")
    return [
       resultat[0] for resultat in curseur.fetchall()   
    ]


def renvoie_regions():
    curseur.execute("SELECT DISTINCT Region FROM EcoleS")
    return [
        resultat[0] for resultat in curseur.fetchall()
    ]


def renvoie_idspe(choix):
    s=[]
    for i in choix:
        curseur.execute("SELECT idspecialite FROM specialite WHERE nomspe=%s",(i,))
        for spe in curseur.fetchall():
            s.append(spe[0])
    return s


def addspe(text):
    try:
        curseur.execute("INSERT INTO Specialite (NomSpe) VALUES (%s)", (text,))
        connexion.commit()
        return "True"
    except:
        return "False"

def addecolespe(alt,ecole,spe):
    curseur.execute("SELECT id FROM EcoleS WHERE Acronyme=%s",(ecole[0],))
    ecole= [
        resultat[0] for resultat in curseur.fetchall()
    ]

 
    try:
        if alt[0]!="Peu importe":
            curseur.execute("INSERT INTO EcoleSpe (Alternance,IdSpe,IdEcole) VALUES (%s,%s,%s)", (alt[0],spe[0],ecole[0]))
        else:
            curseur.execute("INSERT INTO EcoleSpe (Alternance,IdSpe,IdEcole) VALUES (%s,%s,%s)", ("Oui",spe[0],ecole[0]))
            curseur.execute("INSERT INTO EcoleSpe (Alternance,IdSpe,IdEcole) VALUES (%s,%s,%s)", ("Non",spe[0],ecole[0]))
        
        connexion.commit()
        return "True"
    except:
        return "False"

def creationtuple(liste):   
    return tuple(liste)

def filtre(choix_utilisateur, notes):
    conds = []

    """Le none correspond au fait que l'utilisateur n'as rien choisi"""
    if choix_utilisateur["specialites"] != None:
        conds.append(["Idspe", "IN", choix_utilisateur["specialites"]])
    if choix_utilisateur["alternance"] != None:
        conds.append(["Alternance", "IN", choix_utilisateur["alternance"]])
    if choix_utilisateur["concours"] != None:
        conds.append(["Admission", "IN", choix_utilisateur["concours"]])
    if choix_utilisateur["regions"] != None:
        conds.append(["Region", "IN", choix_utilisateur["regions"]])

    if choix_utilisateur["annee"] == ("3/2",):
        bonif_str = "Bonification"
    else:
        bonif_str = "0"

    requete = (
        f"""
        SELECT DISTINCT id,Nom,Admission,Commune,Alternance,Acronyme,NomSpe
        FROM EcoleSpe
        JOIN EcoleS on EcoleSpe.IdEcole=EcoleS.id
        JOIN Specialite on EcoleSpe.IdSpe=Specialite.idspecialite
        JOIN Coefficient on Coefficient.Groupe=EcoleS.Groupe
        WHERE {notes["maths"]}*Maths+
        {notes["physique"]}*Physique+
        {notes["si"]}*SI+
        {notes["informatique"]}*Informatique+
        {notes["anglais"]}*Anglais+
        {notes["francais"]}*Francais+
        {notes["modelisation"]}*Modelisation+
        {bonif_str} >= Points """
    )
    
    S=[]
    for var in conds:
        requete += f" AND {var[0]} {var[1]}  %s "
        S.append(creationtuple(var[2]))
    
    curseur.execute(requete,tuple(S))
    return [ecole for ecole in curseur.fetchall() ]