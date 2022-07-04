import pymongo
from pymongo import MongoClient
url = "mongodb+srv://admin:@cluster0.isljfkd.mongodb.net/?retryWrites=true&w=majority";
client = MongoClient(url)
db = client.pytech
db.students.update_one({"student_id":"1007"},{"$set": {"last_name" : "Williams"}})
for doc in db.students.find({"student_id": "1007"}):
    print(doc)
