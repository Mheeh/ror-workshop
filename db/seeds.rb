puts "Seeds: start"
TEACHER_TITLES = %w(Dr. Prof. TA)
SUBJECTS_TITLES = ["Computing", "Hunting", "Fishing", "Quantum Phisics", "Something"]


User.create!(email: 'admin@admin.com',password: 'adminadmin')



  Teacher.create!(
    first_name: "Alfa",
    last_name: "A",
    academic_title: TEACHER_TITLES.sample
  )
Teacher.create!(first_name: "Beta", last_name: "B", academic_title: TEACHER_TITLES.sample)
Teacher.create!(first_name: "Delta", last_name: "D", academic_title: TEACHER_TITLES.sample)


teachers = Teacher.all
5.times do |i|
  SubjectItem.create!(
    title: SUBJECTS_TITLES[i],
    teacher: teachers.sample
  )
end

25.times do
  Student.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

students = Student.all
SubjectItem.all.each do |subject_item|
  subject_item.students << students.sample(rand(1..4))
end

SubjectItem.all.each do |subject_item|
  subject_item.students.each do |student|
    rand(1..5).times do
      subject_item.subject_item_notes << SubjectItemNote.create(student: student,
                                                                subject_item: subject_item,
                                                                value: rand(1..6))
    end
  end
end

puts "Seeds: done"
