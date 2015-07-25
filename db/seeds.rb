# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


tom = Person.create(first_name: "Tom",
                    last_name: "Brady",
                    relationship_description: "A true friend",
                    birthday: Date.new(1977,8,3),
                    notes: "Not guilty")

mom = Person.create(first_name: "Michelle",
                    last_name: "Obama",
                    relationship_description: "My mother",
                    birthday: Date.new(1964,1,17))

dad = Person.create(first_name: "Barack",
                    last_name: "Obama",
                    relationship_description: "Dad",
                    birthday: Date.new(1961, 8, 4))

chris = Person.create(first_name: "Chris",
                      last_name: "Farley",
                      relationship_description: "Caregiver since 2012",
                      birthday: Date.new(1964,2,15),
                      notes: "Really likes the film Tommy Boy")

jim = Person.create(first_name: "Jim",
                    last_name: "Fisk",
                    birthday: Date.new(1987,8,3),
                    notes: "Injury-prone")

bill = Person.create(first_name: "Bill",
                     last_name: "Belichick",
                     birthday: Date.new(1952,4,16),
                     notes: "Great coach")

Tag.create([{ name: 'Family' },
            { name: 'Friends' },
            { name: 'Caregivers' },
            { name: 'Coworkers' }])

TagRecord.create(person: tom, tag: Tag.find_by_name('Friends'))
TagRecord.create(person: tom, tag: Tag.find_by_name('Coworkers'))
TagRecord.create(person: dad, tag: Tag.find_by_name('Family'))
TagRecord.create(person: mom, tag: Tag.find_by_name('Family'))
TagRecord.create(person: jim, tag: Tag.find_by_name('Friends'))
TagRecord.create(person: chris, tag: Tag.find_by_name('Caregivers'))
TagRecord.create(person: bill, tag: Tag.find_by_name('Coworkers'))

PersonImage.create(person: tom, image: File.open('app/assets/images/brady.jpg'))
PersonImage.create(person: dad, image: File.open('app/assets/images/barack.jpg'))
PersonImage.create(person: mom, image: File.open('app/assets/images/michelle.jpg'))
PersonImage.create(person: jim, image: File.open('app/assets/images/jim.jpg'))
PersonImage.create(person: chris, image: File.open('app/assets/images/farley.jpg'))
PersonImage.create(person: bill, image: File.open('app/assets/images/belichick.jpg'))
