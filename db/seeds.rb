# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

course1 = Course.create(title: "UX for beginners", short_desc: "spmf spofj psdojf ", long_desc: "Vestibulum convallis feugiat venenatis. Mauris vulputate ligula sit amet dignissim tincidunt. Morbi suscipit urna vel placerat euismod. Sed ut rutrum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce hendrerit lectus a sapien facilisis luctus et a turpis. Suspendisse sed scelerisque orci, at tempus lorem. Mauris rutrum eros vel turpis auctor, at gravida lectus posuere. Aenean vel tempus orci, a hendrerit lacus.", cost: 1400 , time_commit: 4, start_date: "12/20/2013" , end_date: "02/20/2014", start_time: Time.parse("09:00"), end_time: Time.parse("18:00") )
course2 = Course.create(title: "Ruby for beginners", short_desc: "smf f pofd dfkl", long_desc: "Vestibulum convallis feugiat venenatis. Mauris vulputate ligula sit amet dignissim tincidunt. Morbi suscipit urna vel placerat euismod. Sed ut rutrum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce hendrerit lectus a sapien facilisis luctus et a turpis. Suspendisse sed scelerisque orci, at tempus lorem. Mauris rutrum eros vel turpis auctor, at gravida lectus posuere. Aenean vel tempus orci, a hendrerit lacus.", cost: 8000 , time_commit: 12, start_date: "08/10/2013" , end_date: "11/10/2013", start_time: Time.parse("09:00"), end_time: Time.parse("18:00"))
#course3 = Course.create(title: "Full stack development", short_desc: "pof fok o a[fok ", long_desc: "Vestibulum convallis feugiat venenatis. Mauris vulputate ligula sit amet dignissim tincidunt. Morbi suscipit urna vel placerat euismod. Sed ut rutrum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce hendrerit lectus a sapien facilisis luctus et a turpis. Suspendisse sed scelerisque orci, at tempus lorem. Mauris rutrum eros vel turpis auctor, at gravida lectus posuere. Aenean vel tempus orci, a hendrerit lacus.", :cost , :time_commit , :start_date, :end_date, :start_time, :end_time, :recurrence, :room_id)
#course4 = Course.create(title: "Front end development", short_desc: "apsdfk [oksf kf d", long_desc: "Vestibulum convallis feugiat venenatis. Mauris vulputate ligula sit amet dignissim tincidunt. Morbi suscipit urna vel placerat euismod. Sed ut rutrum turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce hendrerit lectus a sapien facilisis luctus et a turpis. Suspendisse sed scelerisque orci, at tempus lorem. Mauris rutrum eros vel turpis auctor, at gravida lectus posuere. Aenean vel tempus orci, a hendrerit lacus.", :cost , :time_commit , :start_date, :end_date, :start_time, :end_time, :recurrence, :room_id)

user1 = User.create(first_name: "Gerry", last_name: "Mathe", role: "Tutor", email: "gerry@ga.com", password: "gerry", mobile: "07843298493", ice_mobile: "07398173")
user2 = User.create(first_name: "Matt", last_name: "Cynamon", role: "Admin", email: "matt@ga.com", password: "matt", mobile: "072943984", ice_mobile: "0713081094")
user3 = User.create(first_name: "Gordon", last_name: "Mcrae", role: "Staff", email: "gordon@ga.com", password: "gordon", mobile: "070983109", ice_mobile: "073763734")
user4 = User.create(first_name: "Jamie", last_name: "Wallace", role: "Student", email: "jamie@ga.com", password: "jamie", mobile: "0709098410", ice_mobile: "0719879874")

room1 = Room.create(name: "Room1", capacity: 10)
room2 = Room.create(name: "Room2", capacity: 5)
room3 = Room.create(name: "Room3", capacity: 6)
room4 = Room.create(name: "Room4", capacity: 8)


course1.room = room1
course1.save

user1.courses = [course1, course2]
user1.save

course1.users = [user1, user2]