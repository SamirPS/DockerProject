
from pymongo import MongoClient
#Step 1: Connect to MongoDB - Note: Change connection string as needed
client = MongoClient(host='mongodb',port=27017,username='root',password='example')
db=client.suggestion
#Step 2: Create sample data


def add(text,nom,prenom):
    global db,client
    adddb = { 
            "nom":nom, 
            "prenom":prenom, 
            "text":text
            } 
    if db.reviews.find(adddb).count()>=1:
        return "Suggestion déjà noté"
    db.reviews.insert_one(adddb)
    return True