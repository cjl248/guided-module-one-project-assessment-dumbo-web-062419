
#### USERS ####
u1 = User.create({
  name: "mr_scroodge",
  love_animals: "no"
  })

u2 = User.create({
  name: "mr_cookie_muncher",
  love_animals: "yes"
  })

u3 = User.create({
  name: "Jekyl n' Hyde",
  love_animals: "no"
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

a3 = Animal.create({
  eye_color: "red",
  fur_color: "white",
  is_healthy: "no"
  })

### REPORTS ####
r1 = Report.create({
  month: 02,
  title: "is this your cat?",
  city: "brooklyn",
  user_id: User.first.id,
  animal_id: User.second.id
  })

r2 = Report.create({
  month: 11,
  title: "spotted cat seen yesterday",
  city: "manhattan",
  user_id: User.third.id,
  animal_id: Animal.first.id
  })

r3 = Report.create({
  month: 04,
  title: "have you seen this cat with red eyes?",
  city: "queens",
  user_id: User.second.id,
  animal_id: Animal.third.id
  })
