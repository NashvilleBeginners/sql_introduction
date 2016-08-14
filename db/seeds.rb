# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

authors = [
  {
    first_name: 'Evert',
    last_name: 'Schneider',
    city: 'Blandaville',
    state: 'Arkansas',
    country: 'USA'
  },
  {
    first_name: 'Luisa',
    last_name: 'Erdman',
    city: 'Port Dewittville',
    state: 'Wisconsin',
    country: 'USA'
  },
  {
    first_name: 'Evie',
    last_name: 'Paucek',
    city: 'West Antonette',
    state: 'Ohio',
    country: 'USA'
  },
  {
    first_name: 'Ervin',
    last_name: 'Hansen',
    city: 'East Maxieland',
    state: 'Vermont',
    country: 'USA'
  },
  {
    first_name: 'Dell',
    last_name: 'Wuckert',
    city: 'South Korbin',
    state: 'Maryland',
    country: 'USA'
  },
  {
    first_name: 'Schuyler',
    last_name: 'Ratke',
    city: 'Pacochamouth',
    state: 'Hawaii',
    country: 'USA'
  },
  {
    first_name: 'Lila',
    last_name: 'Hane',
    city: 'Nashville',
    state: 'Tennessee',
  },
  {
    first_name: 'Krista',
    last_name: 'Roberts',
    city: 'New York',
    state: 'New York',
    country: 'USA'
  },
  {
    first_name: 'Murphy',
    last_name: 'Schamberger',
    city: 'Laurynfurt',
    country: 'Germany'
  },
  {
    first_name: 'Kelly',
    last_name: 'Lind',
    city: 'Gustavemouth',
    country: 'France'
  }
]

publishers = [
  {
    name: 'Goldner LLC',
    city: 'New York',
    state: 'New York',
    country: 'USA'
  },
  {
    name: 'Gaylord-Weimann',
    city: 'New York',
    state: 'New York',
    country: 'USA'
  },
  {
    name: 'Gusikowski-Bailey',
    city: 'New York',
    state: 'New York',
    country: 'USA'
  },
  {
    name: 'Dach-Waelchi',
    city: 'New York',
    state: 'New York',
    country: 'USA'
  },
  {
    name: 'Cummings-Glover',
    city: 'New York',
    state: 'New York',
    country: 'USA'
  }
]

titles = [
  {
    name: 'The Painted Veil',
    genre: 'Mythology',
    published_at: DateTime.parse('2008-09-05 22:06:59 -0500')
  },
  {
    name: 'In Dubious Battle',
    genre: 'Mystery',
    published_at: DateTime.parse('2011-06-21 16:11:05 -0500')
  },
  {
    name: 'Gone with the Wind',
    genre: 'Mythology',
    published_at: DateTime.parse('2014-01-28 07:32:16 -0600')
  },
  {
    name: 'A Darkling Plain',
    genre: 'Humor',
    published_at: DateTime.parse('2006-11-05 07:10:18 -0600')
  },
  {
    name: 'Fame Is the Spur',
    genre: 'Speech',
    published_at: DateTime.parse('2015-04-03 19:31:17 -0500')
  },
  {
    name: 'Specimen Days',
    genre: 'Suspense/Thriller',
    published_at: DateTime.parse('2016-01-21 05:37:39 -0600')
  },
  {
    name: 'The Way Through the Woods',
    genre: 'Folklore',
    published_at: DateTime.parse('2008-03-07 20:33:58 -0600')
  },
  {
    name: 'The Wings of the Dove',
    genre: 'Reference book',
    published_at: DateTime.parse('2014-02-25 09:05:52 -0600')
  },
  {
    name: 'The Line of Beauty',
    genre: 'Biography/Autobiography',
    published_at: DateTime.parse('2010-04-13 22:42:50 -0500')
  },
  {
    name: 'Dance Dance Dance',
    genre: 'Legend',
    published_at: DateTime.parse('2011-07-21 11:06:56 -0500')
  },
  {
    name: "The Stars' Tennis Balls",
    genre: 'Comic/Graphic Novel',
    published_at: DateTime.parse('2007-12-06 09:42:55 -0600')
  },
  {
    name: 'Françoise Sagan',
    genre: 'Fiction narrative',
    published_at: DateTime.parse('2008-01-30 20:46:31 -0600')
  },
  {
    name: 'Unweaving the Rainbow',
    genre: 'Reference book',
    published_at: DateTime.parse('2015-07-12 03:22:05 -0500')
  },
  {
    name: "Edna O'Brien",
    genre: 'Fanfiction',
    published_at: DateTime.parse('2009-11-16 06:30:50 -0600')
  },
  {
    name: 'A Summer Bird-Cage',
    genre: 'Mythopoeia',
    published_at: DateTime.parse('2009-02-16 16:58:14 -0600')
  },
  {
    name: 'An Evil Cradling',
    genre: 'Horror',
    published_at: DateTime.parse('2014-05-12 07:59:26 -0500')
  },
  {
    name: 'The Wealth of Nations',
    genre: 'Fiction in verse',
    published_at: DateTime.parse('2015-10-09 14:46:30 -0500')
  },
  {
    name: 'The Golden Bowl',
    genre: 'Mythology',
    published_at: DateTime.parse('2015-09-16 04:47:23 -0500')
  },
  {
    name: 'The Lathe of Heaven',
    genre: 'Suspense/Thriller',
    published_at: DateTime.parse('2011-06-23 10:17:25 -0500')
  },
  {
    name: 'The Torment of Others',
    genre: 'Horror',
    published_at: DateTime.parse('2009-05-29 12:32:09 -0500')
  },
]

authors.each do |author|
  Author.find_or_create_by! author
end

publishers.each do |publisher|
  Publisher.find_or_create_by! publisher
end

def publishers_size
  @publishers_size ||= Publisher.all.size
end

titles.each.with_index(1) do |title, i|
  id_of_publisher = (i % publishers_size) + 1
  Title.find_or_create_by! title.merge({ publisher_id: id_of_publisher })
end

unless Authorship.count > 0
  def authors_size
    @authors_size ||= Author.all.size
  end

  Title.pluck(:id).each.with_index(1) do |id, i|
    id_of_author = (i % authors_size) + 1
    Authorship.create! title_id: id, author_id: id_of_author
  end
end

