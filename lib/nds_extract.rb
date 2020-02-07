$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"

  # imdb = nds  #import the database
  row_index = 0 #start with the 1st director in the array
  while row_index < nds.count do 
    movie_gross = 0 
    director_name = nds[row_index][:name]
    # result = { director_name => 0 }
    gross_index = 0  
    
    
      while gross_index < nds[row_index][:movies].length do

        # movie_gross_old = result[director_name]
        # movie_gross_new = imdb[row_index][:movies][gross_index][:worldwide_gross]
        # movie_gross_total = movie_gross_old + movie_gross_new
        
        movie_gross_new += nds[row_index][:movies][gross_index][:worldwide_gross]
        
        directors_gross[director_name] = movie_gross_total
        gross_index += 1
      end 
    # puts "#{director_name} has grossed $#{movie_gross_total}"
    # puts "This is what I have logged #{result[director_name]}"
    row_index += 1 
   end
  
  # Be sure to return the result at the end!
  directors_gross
end
