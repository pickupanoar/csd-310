import pymongo
from pymongo import MongoClient
url = "mongodb+srv://admin:admin@cluster0.isljfkd.mongodb.net/?retryWrites=true&w=majority";
client = MongoClient(url)
db = client.pytech
db.students.find()
db.students.insert_one({
    "first_name": "Pam",
    "last_name":"Willis",
    "student_id": "1010" 
})
for doc in db.students.find({}).sort("student_id"):
    print(doc)

for doc in db.students.delete_one({"student_id": "1010"}):
    print(doc)

for doc in db.students.find({}).sort("student_id"):
    print(doc)