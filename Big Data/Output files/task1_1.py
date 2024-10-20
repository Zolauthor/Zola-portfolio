import pymongo
connection = pymongo.MongoClient("mongodb://localhost:27017")
db = connection["Assignment1"]
mycollections = db["Songname"]

# Issuing new text file to store triplets:
with open("task1_1_output.txt", "w") as file:
    # Quering the collection to retrieve the data:
    artist_db = mycollections.find({}, {"Artist": 1, "Year": 1, "Sales": 1})

    # Iterating over the cursor to access each document:
    for document in artist_db:
        # Extracting the values of "Artist", "Year", and "Sales":
        artist = document["Artist"]
        year = document["Year"]
        sales = document["Sales"]
        if(artist.find(",") != -1):
            artist = artist.replace(",", "-")
        # Creating a triplet in the format <artist, year, sales>:
        triplet = f"<{artist}, {year}, {sales}>"

        # Writing the triplet to the text file:
        file.write(triplet + "\n")

# Closing the connection
connection.close()
