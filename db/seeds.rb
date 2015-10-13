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

ca1 = ConAction.create(name: 'アク1', target_page: 'page1', text: 'アクション1', image_path: 'images1', link: 'linkPage1')
ca2 = ConAction.create(name: 'アク2', target_page: 'page2', text: 'アクション2', image_path: 'images2', link: 'linkPage2')
ca3 = ConAction.create(name: 'アク3', target_page: 'page3', text: 'アクション3', image_path: 'images3', link: 'linkPage3')
ca4 = ConAction.create(name: 'アク4', target_page: 'page4', text: 'アクション4', image_path: 'images4', link: 'linkPage4')
ca5 = ConAction.create(name: 'アク5', target_page: 'page5', text: 'アクション5', image_path: 'images5', link: 'linkPage5')
ca6 = ConAction.create(name: 'アク6', target_page: 'page6', text: 'アクション6', image_path: 'images6', link: 'linkPage6')

bin1 = Bind.create(segment_id: seg1.id, con_action_id: ca6.id)
bin2 = Bind.create(segment_id: seg2.id, con_action_id: ca5.id)
bin3 = Bind.create(segment_id: seg3.id, con_action_id: ca4.id)
bin4 = Bind.create(segment_id: seg4.id, con_action_id: ca3.id)
bin5 = Bind.create(segment_id: seg5.id, con_action_id: ca2.id)
bin6 = Bind.create(segment_id: seg6.id, con_action_id: ca1.id)
bin7 = Bind.create(segment_id: seg7.id, con_action_id: ca1.id)
bin8 = Bind.create(segment_id: seg8.id, con_action_id: ca2.id)
bin9 = Bind.create(segment_id: seg7.id, con_action_id: ca3.id)
bin10 = Bind.create(segment_id: seg6.id, con_action_id: ca4.id)
bin11 = Bind.create(segment_id: seg5.id, con_action_id: ca5.id)

fb1 = Feedback.create(bind_id: bin1, responce_click: 60, responce_close: 40, time_click: 10, time_close: 2)
bin1.feedback_id = fb1.id
bin1.save

fb2 = Feedback.create(bind_id: bin2, responce_click: 50, responce_close: 50, time_click: 9, time_close: 3)
bin2.feedback_id = fb2.id
bin2.save

fb3 = Feedback.create(bind_id: bin3, responce_click: 40, responce_close: 60, time_click: 8, time_close: 4)
bin3.feedback_id = fb3.id
bin3.save

fb4 = Feedback.create(bind_id: bin4, responce_click: 30, responce_close: 70, time_click: 7, time_close: 5)
bin4.feedback_id = fb4.id
bin4.save

fb5 = Feedback.create(bind_id: bin5, responce_click: 20, responce_close: 80, time_click: 6, time_close: 6)
bin5.feedback_id = fb5.id
bin5.save

fb6 = Feedback.create(bind_id: bin6, responce_click: 10, responce_close: 90, time_click: 5, time_close: 7)
bin6.feedback_id = fb6.id
bin6.save

fb7 = Feedback.create(bind_id: bin7, responce_click: 20, responce_close: 80, time_click: 6, time_close: 8)
bin7.feedback_id = fb7.id
bin7.save

fb8 = Feedback.create(bind_id: bin8, responce_click: 60, responce_close: 40, time_click: 10, time_close: 2)
bin8.feedback_id = fb8.id
bin8.save

fb9 = Feedback.create(bind_id: bin9, responce_click: 90, responce_close: 10, time_click: 10, time_close: 2)
bin9.feedback_id = fb9.id
bin9.save

fb10 = Feedback.create(bind_id: bin10, responce_click: 80, responce_close: 20, time_click: 12, time_close: 1)
bin10.feedback_id = fb10.id
bin10.save

fb11 = Feedback.create(bind_id: bin11, responce_click: 40, responce_close: 60, time_click: 8, time_close: 6)
bin11.feedback_id = fb11.id
bin11.save
