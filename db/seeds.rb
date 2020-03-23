# Activity Seed File assigining 5 activities to latest user

puts "Clearing the database..."

GroupActivity.destroy_all
Activity.destroy_all

puts "Adding 5 activities..."

activity_1 = Activity.create(name: "Javascript 30 Day Challenge", link: "", start_time: DateTime.now, end_time: DateTime.now)
activity_2 = Activity.create(name: "Discuss Intro to Python Course", link: "", start_time: DateTime.now, end_time: DateTime.now)
activity_3 = Activity.create(name: "Watch Rick and Morty + Beer", link: "", start_time: DateTime.now, end_time: DateTime.now)
activity_4 = Activity.create(name: "Complete Kitt Optionals - Week 1-3", link: "", start_time: DateTime.now, end_time: DateTime.now)
activity_5 = Activity.create(name: "Fifa 2020 Tournament", link: "", start_time: DateTime.now, end_time: DateTime.now)

puts "Adding a group..."

group_1 = Group.create(name: "Morty Town Locos")

activities = []

activities << activity_1

activities.each do |activity|
  activity.group = Group.last
  activity.save!
end

puts "Done!"
