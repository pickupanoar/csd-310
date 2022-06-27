import pymongo
from pymongo import MongoClient
url = "mongodb+srv://admin:@cluster0.isljfkd.mongodb.net/?retryWrites=true&w=majority";
client = MongoClient(url)
db = client.pytech
db.students.insert_one({
    "first_name": "Jim",
    "last_name":"Halpert",
    "student_id": "1007" 
})
###^^Used to insert Student information into Collection as document###
print( "--PyTech Collection/Document List --" )
print(db.list_collection_names())
