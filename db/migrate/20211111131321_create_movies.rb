class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :overview
      t.text :poster_url
      t.decimal :rating,  :precision => 2, :scale => 1

      t.timestamps
    end
  end
end
