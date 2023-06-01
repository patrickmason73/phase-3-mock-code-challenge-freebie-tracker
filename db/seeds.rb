Company.delete_all
Dev.delete_all
Freebie.delete_all


puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
office = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
meseeks = Dev.create(name: "Mr. Meseeks")
gazorpazop = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

Freebie.create(item_name: "grungle", value: 10, dev_id: rick.id, company_id: google.id)
Freebie.create(item_name: "bungler", value: 100, dev_id: morty.id, company_id: facebook.id)
Freebie.create(item_name: "grungle", value: 1000, dev_id: meseeks.id, company_id: office.id)

puts "Seeding done!"
