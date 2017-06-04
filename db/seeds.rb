# Seed demo data to database
system("psql #{ENV['DATABASE_URL']} < ./db/data.pgsql")
