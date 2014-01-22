# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Creating workshops bt1"
bt1 = Workshop.create title: "BT1"
puts "Creating workshops bt2"
bt2 = Workshop.create title: "BT2"

puts "Creating lessons for bt1"
5.times do |x|
  Lesson.create title: "L#{x+1}", lesson_number: x+1, workshop: bt1
end

puts "Creating lessons for bt2"
5.times do |x|
  Lesson.create title: "L#{x+1}", lesson_number: x+1, workshop: bt2
end

puts "Creating meetings for section 1"
s1 = Section.new
bt1.lessons.each do |l|
  m = Meeting.create date: Time.now + l.lesson_number.days, lesson: l
  s1.meetings << m
end
s1.save!

puts "Creating meetings for section 2"
s2 = Section.new
bt1.lessons.each do |l|
  m = Meeting.create date: Time.now + 1.month + l.lesson_number.days, lesson: l
  s2.meetings << m
end
s2.save!
