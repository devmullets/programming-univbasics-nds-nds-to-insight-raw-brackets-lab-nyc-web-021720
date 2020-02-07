$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
 
  row_index = 0 #start with the 1st director in the array
 
  while row_index < nds.count do 
    movie_gross = 0 
    directors_gross = {}
    gross_index = 0  
    
    
      while gross_index < nds[row_index][:movies].length do
        director_name = nds[row_index][:name]
        movie_gross += nds[row_index][:movies][gross_index][:worldwide_gross]
        directors_gross[director_name] = movie_gross
        gross_index += 1
      end 
    puts "#{director_name} has grossed $#{movie_gross}"
    # puts "This is what I have logged #{result[director_name]}"
    row_index += 1 
    
   end
  
  # Be sure to return the result at the end!
  directors_gross
end
