class CreateAuthorships < ActiveRecord::Migration[5.0]
  def change
    create_table :authorships do |t|
      t.belongs_to :author, index: true
      t.belongs_to :title,  index: true

      t.timestamps
    end
  end
end
