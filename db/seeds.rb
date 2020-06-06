# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

full_time_job = Job.create(
  title: "UI Designer",
  company: "XYZ Enterprise",
  description: "We are looking for creative, resourceful and adaptable members to join us.",
  responsibilities: "Work with other frontend software engineers to create web interface designs.",
  culture: "Our company takes pride in employing diverse members to make a digital impact."
)
full_time_job.requirements.create(description: "At least 2-3 years of working experience in UI designing related field.")
full_time_job.requirements.create(description: "Proficient in Adobe XD, Illustrator and Photoshop.")
full_time_job.requirements.create(description: "Strong leadership, teamwork, communication and presentation skills.")
full_time_job.requirements.create(description: "Be able to showcase own designs and provide clear explanations to clients.")

internship = Job.create(
  title: "Android Developer Intern",
  company: "ABC Company",
  description: "We develop mobile applications to digitalize businesses and to enhance their audience bases.",
  responsibilities: "Work in a team to develop an Android application according to client's needs.",
  culture: "Members in our company are goal-oriented and passionate in what they are doing.",
)
internship.requirements.create(description: "Pursuing a Degree/Diploma in Computer Science or other related fields.")
internship.requirements.create(description: "Strong in Object-Oriented Programming, Data Structures and Algorithms.")
internship.requirements.create(description: "Have experience coding in Java, Python or C++.")
internship.requirements.create(description: "Have some knowledge in HTML, CSS and JavaScript.")
internship.requirements.create(description: "Strong teamwork, leadership and communication")
internship.requirements.create(description: "Familiarity with React is a bonus")