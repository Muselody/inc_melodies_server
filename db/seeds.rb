# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

articles = [
  { title: "The Magic of Music", body: "Music has the power to transport us to another time and place. This article explores the impact of music on our emotions and memories." },
  { title: "Literary Classics: A Deep Dive", body: "Literature offers a window into the soul of humanity. Join us as we explore some of the most revered classics of all time." },
  { title: "The Rock Revolution", body: "From Elvis to the Beatles, rock music has shaped a generation. Discover the roots and evolution of rock and roll." },
  { title: "Poetry for the Soul", body: "Poetry is the expression of emotions, thoughts, and dreams. Dive into the world of poetic expression and its profound impact." },
  { title: "The Jazz Age", body: "Jazz is not just a genre; it's an era. Discover the artists and events that defined the Jazz Age." },
  { title: "Exploring Fantasy Literature", body: "From Tolkien to Rowling, fantasy literature has captivated readers for decades. Let's explore the worlds and characters that make this genre so enchanting." },
  { title: "The Blues: More than a Genre", body: "The blues is a journey, an emotion, a story. Discover the origins and influence of blues music in modern culture." },
  { title: "Shakespeare: The Bard's Impact", body: "Shakespeare's works are timeless. This article dives into the life and influence of the Bard on literature and culture." },
  { title: "Modern Pop Music", body: "Pop music has evolved over the decades. Let's explore the artists and trends that define modern pop." },
  { title: "Gothic Literature: Dark and Romantic", body: "Gothic literature is mysterious, romantic, and eerie. Delve into the dark tales and characters that define this genre." }
]

articles.each do |article_data|
  Article.create!(article_data)
end
