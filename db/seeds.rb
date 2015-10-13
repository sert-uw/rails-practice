# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Visitor.create(sex: 1, age: 10)
Visitor.create(sex: 2, age: 20)
Visitor.create(sex: 1, age: 30)
Visitor.create(sex: 2, age: 40)
Visitor.create(sex: 1, age: 50)
Visitor.create(sex: 2, age: 60)

Referrer.create(visitor_id: 1, access_from: "https://google.com")
Referrer.create(visitor_id: 2, access_from: "https://www.facebook.com/")
Referrer.create(visitor_id: 3, access_from: "https://twitter.com/")
Referrer.create(visitor_id: 4, access_from: "https://google.com")
Referrer.create(visitor_id: 5, access_from: "https://twitter.com/")
Referrer.create(visitor_id: 6, access_from: "https://www.facebook.com/")
Referrer.create(visitor_id: 6, access_from: "https://google.com")
Referrer.create(visitor_id: 5, access_from: "https://twitter.com/")
Referrer.create(visitor_id: 4, access_from: "https://www.facebook.com/")
Referrer.create(visitor_id: 3, access_from: "https://google.com")
Referrer.create(visitor_id: 2, access_from: "https://twitter.com/")
Referrer.create(visitor_id: 1, access_from: "https://google.com")
Referrer.create(visitor_id: 1, access_from: "https://twitter.com/")
Referrer.create(visitor_id: 2, access_from: "https://www.facebook.com/")

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

ConAction.create(name: 'アク1', target_page: 'page1', text: 'アクション1', image_path: 'images1', link: 'linkPage1')
ConAction.create(name: 'アク2', target_page: 'page2', text: 'アクション2', image_path: 'images2', link: 'linkPage2')
ConAction.create(name: 'アク3', target_page: 'page3', text: 'アクション3', image_path: 'images3', link: 'linkPage3')
ConAction.create(name: 'アク4', target_page: 'page4', text: 'アクション4', image_path: 'images4', link: 'linkPage4')
ConAction.create(name: 'アク5', target_page: 'page5', text: 'アクション5', image_path: 'images5', link: 'linkPage5')
ConAction.create(name: 'アク6', target_page: 'page6', text: 'アクション6', image_path: 'images6', link: 'linkPage6')
