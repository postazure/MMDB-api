# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




movie_seeds = [
  {
    title:"TRON",
    year:1982,
    plot:"A computer hacker is abducted into the digital world and forced to participate in gladiatorial games where his only chance of escape is with the help of a heroic security program.",
    image_url: "http://ia.media-imdb.com/images/M/MV5BMTY0OTM4ODM2MF5BMl5BanBnXkFtZTgwMTI0NDIxMDE@._V1_SX300.jpg",
  },
  {
    title:"WarGames",
    year:1983,
    plot:"A young man finds a back door into a military central computer in which reality is confused with game-playing, possibly starting World War III.",
    image_url: "http://ia.media-imdb.com/images/M/MV5BMTMyMTE3OTk3NF5BMl5BanBnXkFtZTcwOTkwNDc3NA@@._V1_SX300.jpg",
  },
  {
    title:"Back to the Future",
    year:1985,
    plot:"A young man is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his friend, Dr. Emmett Brown, and must make sure his high-school-age parents unite in order to save his own existence.",
    image_url: "http://ia.media-imdb.com/images/M/MV5BMjA5NTYzMDMyM15BMl5BanBnXkFtZTgwNjU3NDU2MTE@._V1_SX300.jpg",
  },
  {
    title:"The Matrix",
    year: 1999,
    plot:"A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.",
    image_url: "http://ia.media-imdb.com/images/M/MV5BMTkxNDYxOTA4M15BMl5BanBnXkFtZTgwNTk0NzQxMTE@._V1_SX300.jpg",
  },
  {
    title:"Space Jam",
    year: 1996,
    plot: "Michael Jordan agrees to help the Looney Toons play a basketball game vs. alien slavers to determine their freedom.",
    image_url: "http://ia.media-imdb.com/images/M/MV5BMTQ5NDg1NTgwOV5BMl5BanBnXkFtZTcwODAwNDAwMQ@@._V1_SX300.jpg",
  },
  {
    title:"The Boondock Saints",
    year: 1999,
    plot: "Fraternal twins set out to rid Boston of the evil men operating there while being tracked down by an FBI agent.",
    image_url: "http://ia.media-imdb.com/images/M/MV5BMTIzODA2NTUyM15BMl5BanBnXkFtZTYwODQ2Mjk4._V1_SX300.jpg",
  },
  {
    title:"Cool World",
    year: 1992,
    plot:  "A comic strip vamp seeks to seduce her cartoonist creator in order to cross over into the real world.",
    image_url: "http://ia.media-imdb.com/images/M/MV5BMTIxNDcxMDAwOV5BMl5BanBnXkFtZTcwODQ5ODMyMQ@@._V1_SX300.jpg",
  },
  {
    title:"1984",
    year: 1956,
    plot:  "George Orwell's novel of a totalitarian future society in which a man whose daily work is rewriting history tries to rebel by falling in love.",
    image_url: "http://ia.media-imdb.com/images/M/MV5BMTMyNjM0MjIxNF5BMl5BanBnXkFtZTcwNTc1OTc3MQ@@._V1_SX300.jpg",
  },
  {
    title:"American Psycho",
    year: 2000,
    plot:  "A wealthy New York investment banking executive hides his alternate psychopathic ego from his co-workers and friends as he escalates deeper into his illogical, gratuitous fantasies.",
    image_url: "http://ia.media-imdb.com/images/M/MV5BMjIyMTYwMTI0N15BMl5BanBnXkFtZTgwNTU2NTYxMTE@._V1_SX300.jpg",
  },
  {
    title:"The Omega Man",
    year: 1971,
    plot:   "Army doctor Robert Neville struggles to create a cure for the plague that wiped out most of the human race.",
    image_url:  "http://ia.media-imdb.com/images/M/MV5BMTQ5OTE3MjMzNV5BMl5BanBnXkFtZTcwMzI5MTYxMQ@@._V1_SX300.jpg",
  },
]

movie_seeds.each do |movie|
  Movie.create(movie)
end
