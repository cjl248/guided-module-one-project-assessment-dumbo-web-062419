
#### USERS ####
u1 = User.create({
  name: "mr_scroodge",
  love_animals: "no"
  })
u2 = User.create({
  name: "mr_cookie_muncher",
  love_animals: "yes"
  })

#### ANIMALS ####
a1 = Animal.create({
  eye_color: "green",
  fur_color: "black",
  is_healthy: "yes"
  })
a2 = Animal.create({
  eye_color: "black",
  fur_color: "spotted",
  is_healthy: "yes"
  })

#### REPORTS ####
r1 = Report.create({
  month: 02,
  title: "is this your cat?",
  city: "brooklyn",
  user_id: User.all[0],
  animal_id: Animal.all[1]
  })
r1 = Report.create({
  month: 02,
  title: "is this your cat?",
  city: "brooklyn",
  user_id: User.all[1],
  animal_id: Animal.all[0]
  })
