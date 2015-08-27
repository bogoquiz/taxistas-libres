# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cabdriver.create(
  [ { name: "Jair Guambita", cell: "3133567878", occupied: false, latitude: 4.6657747, longitude: -74.0682264},
    { name: "David Perez", cell: "3198786907", occupied: false, latitude: 4.5859741, longitude: -74.1167484},
    { name: "Jose Gamez", cell: "3123456787", occupied: true, latitude: 4.7385225, longitude: -74.0635548},
    { name: "Juan Piña", cell: "3133456798", occupied: false, latitude: 4.6372083, longitude: -74.0722087},
    { name: "Jonh Lima", cell: "3113214587", occupied: false, latitude: 4.6143019, longitude: -74.0944818},
    { name: "Javier Perez", cell: "3149874563", occupied: false, latitude: 4.6090939, longitude: -74.1244582},
    { name: "Yehultzda Garrido", cell: "3190987645", occupied: false, latitude: 4.6087945, longitude: -74.0850619},
    { name: "Patricio Najera", cell: "3179869877", occupied: true, latitude: 4.6320753, longitude: -74.1494993},
    { name: "Santiago Paz", cell: "3172345698", occupied: false, latitude: 4.6268032, longitude: -74.1573742},
    { name: "Pedro Perez", cell: "3114569876", occupied: false, latitude: 4.6848564 , longitude: -74.0752761},
    { name: "Emilio Guerra", cell: "3117899456", occupied: true, latitude: 4.6633231, longitude: -74.0681146},
    { name: "Blanca Gomez", cell: "3112346798", occupied: false, latitude: 4.6687566, longitude: -74.0550388}
  ])