class CreateTitles < ActiveRecord::Migration[5.0]
  def change
    create_table :titles do |t|
      t.string :name
      t.string :genre
      t.datetime :published_at
      t.references :publisher, foreign_key: true

      t.timestamps
    end
  end
end
