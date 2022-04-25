Setup
Create a new Rails application called 'favorite_movies'.

class CreateFavoriteMoviesLists < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_movies_lists do |t|

      t.timestamps
    end
  end
end


Create the database
Generate a Movie model with a title attribute and a category attribute
Challenges

class CreateMovieTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_titles do |t|
      add_column :favorite_movies_lists, :movie_title, :string

      t.timestamps
    end
  end
end



class CreateMovieCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_categories do |t|

      t.timestamps
    end
  end
end


class AddCategoryColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :favorite_movies_lists, :movie_categories, :string
  end
end


class AddColumnMovieLength < ActiveRecord::Migration[7.0]
  def change
    add_column :favorite_movies_lists, :movie_length, :integer
  end
end




Add five entries to the database via the Rails console
Create a migration to add a new column to the database called movie_length
Update the values of the five existing attributes to include a movie_length value
Generate a migration to rename the column 'category' to 'genre'
