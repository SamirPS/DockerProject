from flask import Flask, render_template,request
import main
import mongodb
app = Flask(__name__)


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

@app.route('/add', methods=['GET'])
def addspe():
    return render_template('addspe.html')

@app.route('/add', methods=['POST'])
def addspepost():
    addspec=request.form['namespe']
    specialite=main.renvoie_specialites()
    if addspec in specialite:
        return "False"
    
    return main.addspe(addspec)



@app.route('/addspeecole')
def index():
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


@app.route('/suggestions',methods=['GET'])
def suggestions():
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

@app.route('/suggestions',methods=['POST'])
def addspeecole():
    spe = request.form.getlist('specialite')

    spe=main.renvoie_idspe(spe)
    ecole = request.form.getlist('ecole')
    alt = request.form.getlist('alternance')

    return main.addecolespe(alt,ecole,spe)

@app.route('/addsug',methods=['GET'])
def addsug():
    return render_template("addsug.html")

@app.route('/addsug',methods=['POST'])
def addsugadd():
    return str(mongodb.add(request.form['text'],request.form['Nom'],request.form['prenom']))


if __name__ == "__main__":
    app.run(host="0.0.0.0",port=5000)


    

        
       
