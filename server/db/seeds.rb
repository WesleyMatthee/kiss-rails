# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Create users!"
User.destroy_all
user_one = User.create(username: 'Wesmat', email: 'v@k.ca', password: '123456')
user_two = User.create(username: 'Dafig',email: 'ab@c.ca', password: '123456')
user_three = User.create(username: 'Dajung',email: 'jung@gmail.ca', password: '123456')


puts "Create incident types"
IncidentType.destroy_all
incident_type_one = IncidentType.create(name: 'CPR', image_url: '/images/CPR-adult.png')
incident_type_two = IncidentType.create(name: 'Choking', image_url: '/images/choking-adult.gif')
incident_type_three = IncidentType.create(name: 'Bleeding', image_url: nil)
incident_type_four = IncidentType.create(name: 'Anaphylaxis', image_url: nil)


Incident.destroy_all
incidents_one = Incident.create(user_id: '1',incident_type_id: '2', incident_duration: '10', incident_time: '2023-02-07 15:55:14.412114', location: 'toronto', pulse: '70', pulse_time: '2023-02-07 15:55:14.41382', respirations: '50', respirations_time: '2023-02-07 15:55:14.423938', skin_condition: 'cold and dry', skin_condition_time: '2023-02-07 15:55:14.41382', pearl: 'true', pearl_time: '2023-02-07 15:55:14.415138', extra_notes: 'nil', age_stage: 'adult')
incidents_two = Incident.create(user_id: '2',incident_type_id: '1', incident_duration: '5', incident_time: '2023-02-07 16:30:13.785669', location: 'ottawa', pulse: '30', pulse_time: '2023-02-07 16:30:13.785669', respirations: '10', respirations_time: '2023-02-07 15:55:14.41382', skin_condition: 'cold and wet', skin_condition_time: '2023-02-07 15:55:14.423938', pearl: 'false', pearl_time: '2023-02-07 15:55:14.41382', extra_notes: 'nil', age_stage: 'senior')
incidents_three = Incident.create(user_id: '3',incident_type_id: '3', incident_duration: '3', incident_time: '2023-02-07 16:30:13.787305', location: 'buffalo', pulse: '47', pulse_time: '2023-02-07 16:30:13.787305', respirations: '18', respirations_time: '2023-02-07 16:30:13.787305', skin_condition: 'wet', skin_condition_time: '2023-02-07 15:55:14.423938', pearl: 'false', pearl_time: '2023-02-07 15:55:14.423938', extra_notes: 'nil', age_stage: 'baby')
incidents_four = Incident.create(user_id: '2',incident_type_id: '2', incident_duration: '7', incident_time: '2023-02-07 15:55:14.412114', location: 'chicago', pulse: '63', pulse_time: '2023-02-07 16:30:13.787305', respirations: '16', respirations_time: '2023-02-07 16:30:13.787305', skin_condition: 'nil', skin_condition_time: '2023-02-07 15:55:14.423938', pearl: 'false', pearl_time: '2023-02-07 15:55:14.415138', extra_notes: 'nil', age_stage: 'child')
incidents_five = Incident.create(user_id: '1',incident_type_id: '1', incident_duration: '3', incident_time: '2023-02-07 16:30:13.785669', location: 'miami', pulse: '40', pulse_time: '2023-02-07 16:30:13.785669', respirations: '15', respirations_time: '2023-02-07 16:30:13.787305', skin_condition: 'wet', skin_condition_time: '2023-02-07 16:30:13.785669', pearl: 'true', pearl_time: '2023-02-07 15:55:14.415138', extra_notes: 'nil', age_stage: 'adult')
incidents_six = Incident.create(user_id: '2',incident_type_id: '1', incident_duration: '10', incident_time: '2023-02-07 15:55:14.412114', location: 'hamilton', pulse: '66', pulse_time: '2023-02-07 15:55:14.41382', respirations: '17', respirations_time: '2023-02-07 16:30:13.785669', skin_condition: 'wet', skin_condition_time: '2023-02-07 15:55:14.41382', pearl: 'true', pearl_time: '2023-02-07 15:55:14.415138', extra_notes: 'nil', age_stage: 'child')
incidents_seven = Incident.create(user_id: '3',incident_type_id: '2', incident_duration: '15', incident_time: '2023-02-07 16:30:13.787305', location: 'oakville', pulse: '79', pulse_time: '2023-02-07 16:30:13.787305', respirations: '30', respirations_time: '2023-02-07 16:30:13.787305', skin_condition: 'wet', skin_condition_time: '2023-02-07 15:55:14.423938', pearl: 'true', pearl_time: '2023-02-07 15:55:14.415138', extra_notes: 'nil', age_stage: 'adult')

puts "Create incidents"