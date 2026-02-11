# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!
# - Note rubric explanation for appropriate use of external resources.

# Rubric
#
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)
# - You are welcome to use external resources for help with the assignment (including
#   colleagues, AI, internet search, etc). However, the solution you submit must
#   utilize the skills and strategies covered in class. Alternate solutions which
#   do not demonstrate an understanding of the approaches used in class will receive
#   significant deductions. Any concern should be raised with faculty prior to the due date.

# Submission
#
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======
# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========
# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Represented by agent
# ====================
# Christian Bale

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Movie.destroy_all
ActorAgent.destroy_all
MovieCast.destroy_all



# Generate models and tables, according to the domain model.
# TODO!
batman_begins = Movie.new
batman_begins["movie_title"] = "Batman Begins"
batman_begins["year_released"] = "2005"
batman_begins["MPAA_rating"] = "PG-13"
batman_begins["studio"] = "Warner Bros."
batman_begins.save

dark_knight = Movie.new
dark_knight["movie_title"] = "Dark Knight"
dark_knight["year_released"] = "2008"
dark_knight["MPAA_rating"] = "PG-13"
dark_knight["studio"] = "Warner Bros."
dark_knight.save

dark_knight_rises = Movie.new
dark_knight_rises["movie_title"] = "Dark Knight Rises"
dark_knight_rises["year_released"] = "2013"
dark_knight_rises["MPAA_rating"] = "PG-13"
dark_knight_rises["studio"] = "Warner Bros."
dark_knight_rises.save



# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

christian_bale_agent = ActorAgent.new
christian_bale_agent["actor_name"] = "Christian Bale"
christian_bale_agent["agent"] = "Ron Pepperfield"
christian_bale_agent.save

michael_cain_agent = ActorAgent.new
michael_cain_agent["actor_name"] = "Michael Cain"
michael_cain_agent["agent"] = "Ron Pepperfield"
michael_cain_agent.save

liam_neason_agent = ActorAgent.new
liam_neason_agent["actor_name"] = "Liam Neason"
liam_neason_agent["agent"] = "Alford Hackson"
liam_neason_agent.save


# Batman Begins Cast
# =================
cast_1 = MovieCast.new
cast_1["movie_title"] = "Batman Begins"
cast_1["actor_name"] = "Christian Bale"
cast_1["character_played"] = "Bruce Wayne"
cast_1.save

cast_2 = MovieCast.new
cast_2["movie_title"] = "Batman Begins"
cast_2["actor_name"] = "Michael Caine"
cast_2["character_played"] = "Alfred"
cast_2.save

cast_3 = MovieCast.new
cast_3["movie_title"] = "Batman Begins"
cast_3["actor_name"] = "Liam Neeson"
cast_3["character_played"] = "Ra's Al Ghul"
cast_3.save

cast_4 = MovieCast.new
cast_4["movie_title"] = "Batman Begins"
cast_4["actor_name"] = "Katie Holmes"
cast_4["character_played"] = "Rachel Dawes"
cast_4.save

cast_5 = MovieCast.new
cast_5["movie_title"] = "Batman Begins"
cast_5["actor_name"] = "Gary Oldman"
cast_5["character_played"] = "Commissioner Gordon"
cast_5.save

# The Dark Knight Cast
# ====================
cast_6 = MovieCast.new
cast_6["movie_title"] = "The Dark Knight"
cast_6["actor_name"] = "Christian Bale"
cast_6["character_played"] = "Bruce Wayne"
cast_6.save

cast_7 = MovieCast.new
cast_7["movie_title"] = "The Dark Knight"
cast_7["actor_name"] = "Heath Ledger"
cast_7["character_played"] = "Joker"
cast_7.save

cast_8 = MovieCast.new
cast_8["movie_title"] = "The Dark Knight"
cast_8["actor_name"] = "Aaron Eckhart"
cast_8["character_played"] = "Harvey Dent"
cast_8.save

cast_9 = MovieCast.new
cast_9["movie_title"] = "The Dark Knight"
cast_9["actor_name"] = "Michael Caine"
cast_9["character_played"] = "Alfred"
cast_9.save

cast_10 = MovieCast.new
cast_10["movie_title"] = "The Dark Knight"
cast_10["actor_name"] = "Maggie Gyllenhaal"
cast_10["character_played"] = "Rachel Dawes"
cast_10.save

# The Dark Knight Rises Cast
# ==========================
cast_11 = MovieCast.new
cast_11["movie_title"] = "The Dark Knight Rises"
cast_11["actor_name"] = "Christian Bale"
cast_11["character_played"] = "Bruce Wayne"
cast_11.save

cast_12 = MovieCast.new
cast_12["movie_title"] = "The Dark Knight Rises"
cast_12["actor_name"] = "Gary Oldman"
cast_12["character_played"] = "Commissioner Gordon"
cast_12.save

cast_13 = MovieCast.new
cast_13["movie_title"] = "The Dark Knight Rises"
cast_13["actor_name"] = "Tom Hardy"
cast_13["character_played"] = "Bane"
cast_13.save

cast_14 = MovieCast.new
cast_14["movie_title"] = "The Dark Knight Rises"
cast_14["actor_name"] = "Joseph Gordon-Levitt"
cast_14["character_played"] = "John Blake"
cast_14.save

cast_15 = MovieCast.new
cast_15["movie_title"] = "The Dark Knight Rises"
cast_15["actor_name"] = "Anne Hathaway"
cast_15["character_played"] = "Selina Kyle"
cast_15.save



# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!
for movie in Movie.all
  title = movie["movie_title"]
  year = movie["year_released"]
  rating = movie["MPAA_rating"]
  studio = movie["studio"]
  
  puts "#{title} #{year} #{rating} #{studio}"
end



# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
for movie_casts in MovieCast.all
  title2 = MovieCast["movie_title"]
  character2 = MovieCast["character_name"]
  actor2 = MovieCast["actor_name"]
  
  puts "#{title2} #{character2} #{actor2}"
end 


# Prints a header for the agent's list of represented actors output
puts ""
puts "Represented by agent"
puts "===================="
puts ""



# Query the actor data and loop through the results to display the agent's list of represented actors output.
# TODO!
# 
#
#
