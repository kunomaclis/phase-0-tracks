# Nested Data Structures Test of a preschool

school = {
  teachers_lounge: {
    description: 'Contains front_desk and bathroom',
    bathroom: {
      toilets: 4,
      sinks: 4,
      squatty_potties: 2
    },
    front_desk: [
      'The Troll',
      'Receptionist'
    ]

  },
  classrooms: %w[
    Donkeys
    Ladybugs
    Penguins
  ]

}

# Specify the teachers lounge
p school[:teachers_lounge]

# List the classrooms reversed
p school[:classrooms].reverse

# Add another toilet and print result
school[:teachers_lounge][:bathroom][:toilets] = 5
p school[:teachers_lounge][:bathroom]

# Add another classroom and print result
p school[:classrooms].push('Gorrilas')
