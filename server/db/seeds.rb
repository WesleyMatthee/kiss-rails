# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Create users!"
User.destroy_all
user_one = User.create(name: 'Wesmat', email: 'v@k.ca', password: '123456')
user_two = User.create(name: 'Dafig',email: 'ab@c.ca', password: '123456')
user_three = User.create(name: 'Dajung',email: 'jung@gmail.ca', password: '123456')


puts "Create incident types"
IncidentType.destroy_all
incident_type_one = IncidentType.create(name: 'CPR', image: '/images/CPR-adult.png')
incident_type_two = IncidentType.create(name: 'Choking', image: '/images/choking-adult.gif')
incident_type_three = IncidentType.create(name: 'Bleeding', image: nil)
incident_type_four = IncidentType.create(name: 'Anaphylaxis', image: nil)


puts "Create incidents"
Incident.destroy_all
incidents_one = Incident.create(
    user_id: 1,
    incident_type_id: 2, 
    incident_duration: 10, 
    location: 'toronto', 
    age_stage: 'adult'
    )

incidents_two = Incident.create(
    user_id: 2,
    incident_type_id: 1, 
    incident_duration: 5, 
    location: 'ottawa',  
    age_stage: 'adult'
    )

incidents_three = Incident.create(
    user_id: 3,
    incident_type_id: 2, 
    incident_duration: 3,  
    location: 'buffalo', 
    age_stage: 'baby'
    )

incidents_four = Incident.create(
    user_id: 1,
    incident_type_id: 2, 
    incident_duration: 7, 
    location: 'chicago', 
    age_stage: 'child'
    )

incidents_five = Incident.create(
    user_id: 2,
    incident_type_id: 1, 
    incident_duration: 3, 
    location: 'miami', 
    age_stage: 'adult'
    )

incidents_six = Incident.create(
    user_id: 3,
    incident_type_id: 1, 
    incident_duration: 10, 
    location: 'hamilton', 
    age_stage: 'child'
    )

incidents_seven = Incident.create(
    user_id: 1,
    incident_type_id: 2, 
    incident_duration: 15, 
    location: 'oakville', 
    age_stage: 'adult'
    )


puts "Create Vitals"
Vital.destroy_all
vital_one = Vital.create(
    incident_id: 1,
    pulse: 65, 
    respiration: 12, 
    skin_condition: 'wet', 
    pearl: true, 
    extra_notes: nil,
        )

vital_second = Vital.create(
    incident_id: 2,
    pulse: 75, 
    respiration: 22, 
    skin_condition: 'dry', 
    pearl: false, 
    extra_notes: nil,
        )

vital_three = Vital.create(
    incident_id: 1,
    pulse: 80, 
    respiration: 10, 
    skin_condition: 'wet', 
    pearl: true, 
    extra_notes: nil,
        )

vital_four = Vital.create(
    incident_id: 2,
    pulse: 65, 
    respiration: 8, 
    skin_condition: 'dry', 
    pearl: false, 
    extra_notes: nil,
        )

vital_five = Vital.create(
    incident_id: 1,
    pulse: 150, 
    respiration: 30, 
    skin_condition: 'wet', 
    pearl: false, 
    extra_notes: "Ruh Roh",
        )

vital_six = Vital.create(
    incident_id: 1,
    pulse: 100, 
    respiration: 12, 
    skin_condition: 'wet', 
    pearl: true, 
    extra_notes: nil,
        )

vital_seven = Vital.create(
    incident_id: 2,
    pulse: 90, 
    respiration: 7, 
    skin_condition: 'dry', 
    pearl: false, 
    extra_notes: nil,
        )