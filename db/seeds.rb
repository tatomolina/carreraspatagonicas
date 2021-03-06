admin = User.new(
  email: "admin@admin.com",
  password: "adminadmin",
  password_confirmation: "adminadmin"
)
admin.add_role :admin
admin.save!

manager = User.new(
  email: "manager@manager.com",
  password: "managermanager",
  password_confirmation: "managermanager"
)
manager.add_role :manager
manager.save!

user = User.new(
  email: "user@user.com",
  password: "useruser",
  password_confirmation: "useruser"
)
user.save!

for i in 1..15
  race = Race.create!( name: "Race #{i}")
  if i.odd?
    race.due_date = Date.today
  else
    race.due_date = Date.tomorrow
  end
  race.save!
end
