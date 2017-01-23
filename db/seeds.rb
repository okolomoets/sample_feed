# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




Article.create(
           title: "We The Dots: A cartoon tale of politics and togetherness",
           author: "Steph Halligan",
           content:<<-EOT
  So loud and brash with thoughts on thoughts
  The orange seemed unlike the red
  But red took note of what he said.
  He said he knew they’d been forgot
  And he could fix their current plot.
  The orange said he’d make sure red
  Would get on top and get ahead.
  He pointed to the other dots,
  “Now THIS is why you’re in this lot!
  Those dots have taken up your spots!
  And left you here to sit and rot.”
EOT
)

Article.create(
    title: "Growing Up In The Middle Of Everywhere",
    author: "Cody Weber",
    content:<<-EOT
    My interest in Photoshop was birthed out of necessity. As a young upstart musician in the middle of everywhere, I couldn’t afford to do a lot of the things that bands need to do in order to survive. This led to a lot of inside bickering between my teenage bandmates that all had jobs and income that I didn’t have. They would want to do banners, album art, logos — all things that cost an insane amount of money to someone that never seemed to have more than ten dollars in his pocket at any given time. My solution wasn’t to go out and find employment (ever the pragmatist), it was to learn how to make those things myself so I wouldn’t have to pay someone else to do it. At the very least, I thought, it would cut down on the arguments at band practice.
    It was a natural extension to start using my own photos for that same purpose. Why pay somebody to take our pictures when I could get a cheap camera and do it myself? I begged my dad for months and finally, on my fifteenth birthday, he bought me one.
  EOT
)

Article.create(
    title: "I Shed No Tears for the Billionaires",
    author: "Justin Zarb",
    content:<<-EOT
    At Bernie Sanders’s recent town hall, a young man named Roey Goldstein accused Sanders of demonizing the country’s top earners for benefiting from corporate-friendly trade agreements such as NAFTA. Roey expressed his disappointment and lamented that, as a “moderate Democrat” he and others like him were feeling a bit hung out to dry. Roey asked if Sanders could be more politically correct with his economic message so as not to alienate some Democrats.
    I shed no tears over his concern. The country’s top earners are doing just fine.
    Hand-wringing over the top 1% is the sort of backward rhetoric that tries to appeal to a liberal’s sense of social justice — that one should be careful not to offend any group, in this case billionaires and other top earners. Roey would like Sanders to treat the top 1% of our country as if they were any other marginalized group — one that faces institutional discrimination and is being unfairly demonized at the expense of working people.
  EOT
)


Keyword.create(
           title: "shed",
           word_type: Keyword.words_types.symbolize_keys.keys.sample
)
Keyword.create(
           title: "natural",
           word_type: Keyword.words_types.symbolize_keys.keys.sample
)

Keyword.create(
    title: "photo",
    word_type: Keyword.words_types.symbolize_keys.keys.sample
)
Keyword.create(
    title: "justice",
    word_type: Keyword.words_types.symbolize_keys.keys.sample
)
