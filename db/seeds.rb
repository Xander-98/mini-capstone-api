# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
product = Product.new(:name => "blender", :price => 55, :image_url => "https://blendjet.com/products/blendjet", :description => "It really does just blend everything up for you, it's that good" )
product.save
product = Product.new(:name => "laptop", :price => 950, :image_url => "https://www.notebookcheck.net/NVIDIA-GeForce-GTX-950.150992.0.html", :description => "A good laptop for the price. Not the hardest hitting but there when you need it." )
product.save
product = Product.new(:name => "couch", :price => 250, :image_url => "https://www.target.com/p/willow-sofa-lifestyle-solutions/", :description => "You'll never want to leave the couch again after buying this super comfortable sectional" )
product.save
product = Product.new(:name => "yoga ball", :price => 20, :image_url => "https://www.amazon.com/REEHUT-Anti-Burst-Exercise-Balance-Workout", :description => "So you started to get back into yoga, you're gonna need one of these eventually, so just buy it")
product.save