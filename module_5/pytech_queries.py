import pymongo
from pymongo import MongoClient
url = "mongodb+srv://admin:@cluster0.isljfkd.mongodb.net/?retryWrites=true&w=majority";
client = MongoClient(url)
db = client.pytech
print( "--PyTech Collection/Document List --" )
print(db.list_collection_names())
for doc in db.students.find({}).sort("student_id"):
    print(doc)