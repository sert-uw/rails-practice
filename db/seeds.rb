# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tag1 = Tag.create(name: '男性')
tag2 = Tag.create(name: '女性')
tag3 = Tag.create(name: '10代')
tag4 = Tag.create(name: '20代')
tag5 = Tag.create(name: '30代')
tag6 = Tag.create(name: '40代')
tag7 = Tag.create(name: '50代')
tag8 = Tag.create(name: '60代')

seg1 = Segment.create(name: '男性セグ')
seg1.tags << tag1

seg2 = Segment.create(name: '女性セグ')
seg2.tags << tag2

seg3 = Segment.create(name: '10代セグ')
seg3.tags << tag3

seg4 = Segment.create(name: '20代セグ')
seg4.tags << tag4

seg5 = Segment.create(name: '30代セグ')
seg5.tags << tag5

seg6 = Segment.create(name: '40代セグ')
seg6.tags << tag6

seg7 = Segment.create(name: '50代セグ')
seg7.tags << tag7

seg8 = Segment.create(name: '60代セグ')
seg8.tags << tag8
