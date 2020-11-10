# class Fichier:


#     def __init__(self):

#         self.p = open("C:/Users/utilisateur/Documents/microsoft_ia/Devoirs/Projet mail/apprenantmail.txt", "r")
       
#     def affichage(self) :
 
#         for ligne in self.p :
#             print(ligne.strip())
#         self.p.close()
    
# Fichier().affichage()

p = open("C:/Users/utilisateur/Documents/microsoft_ia/Devoirs/Projet mail/apprenantmail.txt", "r")

l = []

for ligne in p :
    print(ligne.strip())
    ligne.find("o")

            

           
p.close()

