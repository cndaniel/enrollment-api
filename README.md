# README
a course registration api with rails 5


a TA-reference solution for fullstack job question 2

## Specs

 1. model for students, teachers and courses
 2. many-to-many-relationships: student-teacher, student-courses
 3. one-to-many-relationships: course- teacher
 4. api: get students/:id, get /teachers, delete /teachets/:id


## requirements
 * ruby 2.3.1
 * rails 5
 * rspec 3.5.4


## Installation
```
   $git clone git@github.com:cndaniel/enrollment-api.git
   $cd enrollment-api

   $ bundle install
   $ bundle exec rake db:create
   $ bundle exec rake db:migrate
   $ bundle exec rspec --format documentation
```


 2017
