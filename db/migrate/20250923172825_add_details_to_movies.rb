class AddDetailsToMovies < ActiveRecord::Migration[8.0]
  def change
    add_column :movies, :director, :string
    add_column :movies, :production_house, :string
  end
end
