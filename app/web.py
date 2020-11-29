from flask import Flask, session, redirect, url_for, request,render_template
import main
import redissug

app = Flask(__name__)


from pymongo import MongoClient
client = MongoClient(host='mongodb',port=27017,username='root',password='example')
db=client.users



def exist(pseudo):
    check ={ 
            "pseudo":pseudo
            } 
    return db.base.find(check).count()>=1

def checkadmin(pseudo,password):
    check = { 
            "pseudo":pseudo, 
            "password":password,
            }
    if db.base.find(check).count()>=1:
        test = db.base.find(check)
        for x in test:
            return int(x["admin"])==1
    return False


@app.errorhandler(404) 
def invalid_route(e): 
    return redirect(url_for("login",url="accueil"))

@app.route("/admin",methods=['GET','POST'])
def ajoutadmin():
    if 'username' in session and 'password' in session:

        if request.method=="POST":
            achanger=request.form.getlist('admin')
            for i in achanger:
                myquery = { "pseudo": i }
                newvalues = { "$set": { "admin": 1 } }
                db.base.update_one(myquery, newvalues)
        L=[]
        checkadmin = {  
                "admin":0,
                }
        test = db.base.find(checkadmin)
        for x in test:
                L.append(x["pseudo"])

        return render_template('admin.html', notadmin=L)

    return redirect(url_for("login",url="ajoutadmin"))

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        if exist(request.form["username"]) == False:
            return redirect(url_for('login',url = "accueil"))
        if checkadmin(request.form["username"],request.form['password'])==False:
            return "Vous n'etes pas admin"
        session['username'] = request.form['username']
        session['password'] = request.form['password']
        return redirect(url_for(request.args.get('url')))
    return '''
        <form method="post">
            <p>username  <input type=text name=username>
            <p>password  <input type=password name=password>
            <p><input type=submit value=Login>
        </form>
    '''

@app.route('/singin', methods=['GET', 'POST'])
def inscrire():
    if request.method == 'POST':
        if exist(request.form["username"]):
            return "l'utilisateur est deja existant"

        
        if db.base.find().count()==0:
            adminid=1
        else:
            adminid=0

        user = {
            "pseudo": request.form["username"],
            "password" : request.form["password"],
            "admin" : adminid
        }
        db.base.insert_one(user)
        return redirect(url_for('login', url = "accueil"))

    return '''
        <form method="post">
            <p>username  <input type=text name=username>
            <p>password  <input type=password name=password>
            <p><input type=submit value=confirm>
        </form>
    '''


@app.route('/', methods=['GET'])
def accueil():
    special = main.renvoie_specialites()
    region = main.renvoie_regions()
    concours = main.renvoie_admission()
    return render_template('index.html', special=special,region=region,concours=concours)

@app.route('/', methods=['POST'])
def my_form_post():
    
    #Get data of listbox
    specialites = request.form.getlist('specialite')
    alternance = request.form.getlist('alternance')
    concours = request.form.getlist('concours')
    regions = request.form.getlist('region')
    annee = request.form.getlist('annee')
    



    specialites =main.renvoie_idspe(specialites)
    

    

    #Check list vide
    if specialites==[]:
        specialites=None
    if alternance==[] or alternance==["Peu importe"]:
        alternance=None
    if concours==[]:
        concours=None
    if regions==[]:
        regions=None
    if annee==[]:
        annee=None

    choix_utilisateur={"specialites":specialites,
                        "alternance":alternance,
                        "concours":concours,
                        "regions":regions,
                        "annee":annee}

    

    #Get Notes
    maths = request.form['maths']
    physique=request.form['physique']
    si=request.form['si']
    informatique=request.form['informatique']
    anglais=request.form['anglais']
    francais=request.form['francais']
    modelisation=request.form['modelisation']

    notes={"maths":maths,
            "physique":physique,
            "si":si,
            "informatique":informatique,
            "anglais":anglais,
            "francais":francais,
            "modelisation":modelisation}

    ecole=main.filtre(choix_utilisateur,notes)
    ecolesdef=[]

    for eco in ecole:
        if eco[5] not in ecolesdef:
            ecolesdef.append(eco[5])



    
    return render_template('affichage.html', ecole=ecolesdef)

@app.route('/prix',methods=['GET'])
def prix():
    text = request.args.get('jsdata').split(",")
    prixboursier=main.prix_ecole(text,"Boursier")
    prixnonboursier=main.prix_ecole(text,"NonBoursier")

    return render_template('prix.html', prixb=prixboursier,prixnb=prixnonboursier)

@app.route('/add',methods=['GET', 'POST'])
def addspe():
    if 'username' in session and 'password' in session:

        if request.method=="POST":
            addspec=request.form['namespe']
            specialite=main.renvoie_specialites()
            if addspec in specialite:
                return "False"
        
            return main.addspe(addspec)

        return render_template('addspe.html')
    return redirect(url_for("login",url="addspe"))

    

   
@app.route('/addspeecole')
def indexs():
    if 'username' in session and 'password' in session:
        choix_utilisateur={"specialites":None,
                            "alternance":None,
                            "concours":None,
                            "regions":None,
                            "annee":None}

        notes={"maths":20,
                "physique":20,
                "si":20,
                "informatique":20,
                "anglais":20,
                "francais":20,
                "modelisation":20}

        ecole=main.filtre(choix_utilisateur,notes)
        ecolesdef=[]

        for eco in ecole:
            if eco[5] not in ecolesdef:
                ecolesdef.append(eco[5])

        return render_template('addecole.html',ecole=ecolesdef)
    return redirect(url_for("login",url="indexs"))




@app.route('/suggestions',methods=['GET', 'POST'])
def suggestions():
    if request.method=="POST":
        spe = request.form.getlist('specialite')
        spe=main.renvoie_idspe(spe)
        ecole = request.form.getlist('ecole')
        alt = request.form.getlist('alternance')
        return main.addecolespe(alt,ecole,spe)
    
    text = request.args.get('jsdata')

    spe = []
    spedefinitif=[]
    spesur=main.renvoie_specialites()
    if text:
        
        choix_utilisateur={"specialites":None,"alternance":None,"concours":None,"regions":None,"annee":None}
        notes={"maths":20,"physique":20,"si":20,"informatique":20,"anglais":20,"francais":20,"modelisation":20}
        
        ecole=main.filtre(choix_utilisateur,notes)

        for eco in ecole:
            if eco[-1] not in spe and text==eco[5]:
                spe.append(eco[-1])
        
        
        for i in spesur:
            if i not in spe:
                spedefinitif.append(i)


    return render_template('suggestions.html', suggestions=spedefinitif,text=text)


    

@app.route('/addsug',methods=['GET', 'POST'])
def addsug():
    if request.method=="POST":
            return str(redissug.add(request.form['text'],request.form['Nom'],request.form['prenom']))
    return render_template("addsug.html")

@app.route('/logout')
def logout():
    session.pop('username', None)
    return redirect(url_for("accueil"))

app.secret_key = 'Cestvraimentpassecret'



if __name__ == "__main__":
    app.run(host="0.0.0.0",port=5000)


    

        
       
