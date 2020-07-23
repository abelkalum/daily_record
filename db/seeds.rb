alexis = User.create(name: "Alexis", email: "alexis@alexis.com", password: "secret")

DiaryEntry.create(title: "Big step!", content: "Today I begun my Sinatra project!", user_id: alexis.id)