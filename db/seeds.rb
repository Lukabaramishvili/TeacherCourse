# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


teacher1 = Teacher.create(name: "Rei", bio: "Teaches Astronomy")
teacher2 = Teacher.create(name: "Graham", bio: "Teaches Code")

student1 = Student.create(name: "Chris", major: "Computer Science")
student2 = Student.create(name: "Silwya", major: "Astrophysics")

course1 = Course.create(name: "Astronomy", teacher_id: teacher1.id)
course2 = Course.create(name: "Coding", teacher_id: teacher2.id)

enrollment1 = Enrollment.create(course_id: course1.id, student_id: student2.id)
enrollment2 = Enrollment.create(course_id: course2.id, student_id: student1.id)
