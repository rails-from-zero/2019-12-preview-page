# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ticket.create!(
  [
    {
      title: "Start up error on mac os",
      description: "Stung regarding besides awakened goldfinch much alas boomed and well less caterpillar more hound much the hey wildly horse house oh before much pinched interbred by boyishly less fox unlike balked bat animated set beneficently much house lynx much by cobra disagreed.",
      reporter: "John",
      created_at: 1.hour.ago
    },
    {
      title: "How do I save my preferences?",
      description: "Alas tangible in learned but this combed hello yikes quizzical koala paradoxical dived begrudging breezy some tortoise since neurotic far groundhog far up sharp amidst inarticulately along selflessly this buffalo some buffalo.",
      reporter: "Steve",
      created_at: 1.years.ago
    },
    {
      title: "Could you add support for the gopher protocol?",
      description: "Jaguar hiccupped hello wide wastefully meadowlark",
      reporter: "Jill",
      created_at: 5.months.ago
    },
    {
      title: "Segmentation fault when trying to send a file",
      description: "Jaguar hiccupped hello wide wastefully meadowlark and cowered insecure meager mammoth much redid since inarticulate that within relentlessly and overhung aptly due one or pending.",
      reporter: "Brook",
      created_at: 1.month.ago
    },
    {
      title: "Some characters are displayed incorrectly",
      description: "So much crazily the porcupine according some this resolute a less rooster earnestly where spoke much huskily successful some far hence one and some unintelligibly hello archly less after excepting doggedly mandrill.",
      reporter: "Matt",
      created_at: 1.month.ago
    },
    {
      title: "Tab key no longer works",
      description: "Far much subtly accordingly raccoon stoutly gaily some this that some monogamously shuddered gazelle oh and turned instead a together slew goodness far far awesomely as freely over frailly frog the cut between boa coughed a under.",
      reporter: "Susan",
      created_at: 1.week.ago
    },
    {
      title: "How do I save my preferences?",
      description: "Hey duteous grinned porcupine much gaily some well drank since oh the behind victorious that less factual into much toward a the quietly that together kangaroo and uninhibited came one abiding much regardless quail then capybara far.",
      reporter: "Steve",
      created_at: 3.days.ago
    }
  ]
)

Comment.create(
  [
    {
      name: "Bob",
      ticket: Ticket.first,
      body: "I have the same issue!"
    },
    {
      name: "Admin",
      ticket: Ticket.first,
      body: "What mac os version are you running?"
    }
  ]
)
