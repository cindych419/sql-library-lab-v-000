def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  FROM books
  WHERE series_id = 1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
  FROM characters
  ORDER BY (characters.motto) ASC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species)
  FROM characters
  GROUP BY (characters.species)
  ORDER BY COUNT(characters.species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM series
  JOIN authors
  ON authors.id = series.author_id
  JOIN subgenres
  ON subgenres.id = series.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  JOIN characters
  ON series.id = characters.series_id
  GROUP BY characters.species
  ORDER BY COUNT(characters.species = 'human') LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(books.id)
  FROM books
  JOIN character_books
  ON books.id = character_books.book_id
  JOIN characters
  ON characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY COUNT(books.id) DESC;"
end
