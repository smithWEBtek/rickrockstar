# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS Events extension
Refinery::Events::Engine.load_seed

# Added by Refinery CMS Bands extension
Refinery::Bands::Engine.load_seed

# Added by Refinery CMS Tags extension
Refinery::Tags::Engine.load_seed

# Added by Refinery CMS Taggings extension
Refinery::Taggings::Engine.load_seed
