import redis

cache = redis.Redis(host='redis', port=6379)


def add(text,nom,prenom):
    if cache.exists(text+nom+prenom):
        return "Suggestion déjà noté"
    cache.set(text+nom+prenom,text)
    return  "Suggestion noté"