# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cabdriver.create(
  [ { name: "Jair Guambita", cell: "3133567878", state: "libre" },
    { name: "David Perez", cell: "3198786907", state: "libre" },
    { name: "Jose Gamez", cell: "3123456787", state: "ocupado" },
    { name: "Juan Piña", cell: "3133456798", state: "libre" },
    { name: "Jonh Lima", cell: "3113214587", state: "libre" },
    { name: "Javier Perez", cell: "3149874563", state: "libre" },
    { name: "Yehultzda Garrido", cell: "3190987645", state: "libre" },
    { name: "Patricio Najera", cell: "3179869877", state: "ocupado" },
    { name: "Santiago Paz", cell: "3172345698", state: "libre" },
    { name: "Pedro Perez", cell: "3114569876", state: "libre" },
    { name: "Emilio Guerra", cell: "3117899456", state: "ocupado" },
    { name: "Blanca Gomez", cell: "3112346798", state: "libre" }
  ])