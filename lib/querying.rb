def select_books_titles_and_years_in_first_series_order_by_year
  #select books.title, books.years series.id = 1 
  #books belong to one series 
  "SELECT books.title, books.year FROM books INNER JOIN series ON books.series_id = series.id WHERE series.id = 1 ORDER BY books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters ORDER BY LENGTH (characters.motto) DESC LIMIT 1"
end

def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species) FROM characters GROUP BY characters.species ORDER BY COUNT(characters.species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM subgenres INNER JOIN authors ON authors.id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM characters INNER JOIN series ON series.id = characters.series_id WHERE characters.species = 'human' GROUP BY series.title ORDER BY COUNT(characters.species) DESC LIMIT 1;"
  #Got help on this, dont forget count can come later only select what you want to return 
end

def select_character_names_and_number_of_books_they_are_in #using a double join?!??!!
  "SELECT characters.name, COUNT(character_books.book_id) FROM character_books JOIN characters ON character_books.character_id = characters.id JOIN books ON character_books.book_id = books.id GROUP BY characters.name ORDER BY COUNT(character_books.book_id) DESC"
  end
