# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
puts "Destroyed all users"

users = [
  {first_name: "Mike", last_name: "Ornellas", points: 20},
  {first_name: "Amanda", last_name: "Contreras", points: 20},
  {first_name: "Shaan", last_name: "Shah", points: 20},
  {first_name: "Gene", last_name: "Le", points: 20},
  {first_name: "Michael", last_name: "Jordan", points: 20}
]

puts "Creating five users"
users.each do |user|
  email_address = user[:first_name].downcase + "@themakersquare.com"
  User.create(first_name: user[:first_name], last_name: user[:last_name])
end
puts "Created five users"

books = {
  "matilda" => {
    title: 'Matilda',
    img_url: 'http://ia.media-imdb.com/images/M/MV5BNTYxNDEyMDQ1MF5BMl5BanBnXkFtZTcwODcxMDYyMQ@@._V1_SY317_CR6,0,214,317_.jpg',
    description: "A grouchy couple are parents to a very sweet girl, Matilda. Unlike her bratty brother and mean parents, Matilda becomes a very sweet and extremely intelligent 6 year old girl, who is very keen to go to school and read books. After a while, her parents send her to school with the worst principal in the world, a very sweet teacher, and good friends. While trying to put up with her parents' and principal's cruelty, she starts to unwittingly unleash telekinetic powers, destroying a television and making a newt fly onto the principal. With enough practice, Matilda starts to learn to control her telekinetic powers and soon using them on her principal so she can drive her away from the school.",
    points: 30
  },
  "seinfeld" => {
    title: 'Matilda',
    img_url: 'http://ia.media-imdb.com/images/M/MV5BNTYxNDEyMDQ1MF5BMl5BanBnXkFtZTcwODcxMDYyMQ@@._V1_SY317_CR6,0,214,317_.jpg',
    description: "A grouchy couple are parents to a very sweet girl, Matilda. Unlike her bratty brother and mean parents, Matilda becomes a very sweet and extremely intelligent 6 year old girl, who is very keen to go to school and read books. After a while, her parents send her to school with the worst principal in the world, a very sweet teacher, and good friends. While trying to put up with her parents' and principal's cruelty, she starts to unwittingly unleash telekinetic powers, destroying a television and making a newt fly onto the principal. With enough practice, Matilda starts to learn to control her telekinetic powers and soon using them on her principal so she can drive her away from the school.",
    points: 10
  },
  "friends" => {
    title: 'Matilda',
    img_url: 'http://ia.media-imdb.com/images/M/MV5BNTYxNDEyMDQ1MF5BMl5BanBnXkFtZTcwODcxMDYyMQ@@._V1_SY317_CR6,0,214,317_.jpg',
    description: "A grouchy couple are parents to a very sweet girl, Matilda. Unlike her bratty brother and mean parents, Matilda becomes a very sweet and extremely intelligent 6 year old girl, who is very keen to go to school and read books. After a while, her parents send her to school with the worst principal in the world, a very sweet teacher, and good friends. While trying to put up with her parents' and principal's cruelty, she starts to unwittingly unleash telekinetic powers, destroying a television and making a newt fly onto the principal. With enough practice, Matilda starts to learn to control her telekinetic powers and soon using them on her principal so she can drive her away from the school.",
    points: 20
  },
  "Lion King" => {
    title: 'Matilda',
    img_url: 'http://ia.media-imdb.com/images/M/MV5BNTYxNDEyMDQ1MF5BMl5BanBnXkFtZTcwODcxMDYyMQ@@._V1_SY317_CR6,0,214,317_.jpg',
    description: "A grouchy couple are parents to a very sweet girl, Matilda. Unlike her bratty brother and mean parents, Matilda becomes a very sweet and extremely intelligent 6 year old girl, who is very keen to go to school and read books. After a while, her parents send her to school with the worst principal in the world, a very sweet teacher, and good friends. While trying to put up with her parents' and principal's cruelty, she starts to unwittingly unleash telekinetic powers, destroying a television and making a newt fly onto the principal. With enough practice, Matilda starts to learn to control her telekinetic powers and soon using them on her principal so she can drive her away from the school.",
    points: 20
  }
}

puts "Creating four books"
books.each do |key, book|
  v = Book.new(book)
  # v.user_id = User.order("RANDOM()").first.id
  v.save
end
puts "Created four books"
