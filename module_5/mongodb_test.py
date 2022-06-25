import pymongo
from pymongo import MongoClient
url = "mongodb+srv://admin:<password>@cluster0.isljfkd.mongodb.net/?retryWrites=true&w=majority";
client = MongoClient(url)
db = client.pytech
print( "--PyTech Collection List --" )
print(db.list_collection_names())
