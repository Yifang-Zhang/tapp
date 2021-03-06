# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default
# values. The data can then be loaded with the rails db:seed command (or created alongside the
# database with db:setup).

a = Applicant.create(
  first_name: 'George',
  last_name: 'Wu',
  utorid: 'wugeorge',
  student_number: '1000136937',
  email: 'george.wu.sample@mail.utoronto.ca',
  phone: '6473879674',
  address: '130 St. George Street',
  dept: 'Computer Science',
  year_in_program: 4,
  is_grad_student: false,
  is_full_time: true
)
s = Session.create(
  year: 2018,
  semester: 'fall',
  pay: 42.25,
  start_date: DateTime.new(2018, 9, 1),
  end_date: DateTime.new(2018, 12, 31),
)
r = Round.create(
  number: 1,
  open_date: DateTime.new(2018, 7, 10),
  close_date: DateTime.new(2018, 8, 20),
  session: s
)
p = Position.create(
  round: r,
  course_code: 'CSC148H1F',
  course_name: 'Introduction to Computer Science',
  current_enrolment: 500,
  duties: 'Lead labs',
  qualifications: 'Well versed in Python',
  hours: 54,
  cap_enrolment: 500,
  num_waitlisted: 100,
  start_date: DateTime.new(2018, 9, 10),
  end_date: DateTime.new(2018, 12, 10),
  openings: 40
)
Preference.create(
  position: p,
  applicant: a,
  priority: 1
)
i = Instructor.create(
  first_name: 'Paul',
  last_name: 'Brown',
  email: 'paul.brown.sample@utoronto.ca',
  utorid: 'brownpau'
)

s.rounds << r
p.instructors << i

user1 = User.create(
  utorid: 'brownpau',
  role: 'instructor'
)

user2 = User.create(
  utorid: 'admintes',
  role: 'admin'
)
