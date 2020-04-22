class CreateCattles < ActiveRecord::Migration[5.1]
  def change
    create_table :cattles do |t|
      t.string :tag
      t.string :color
      t.string :gender
      t.string :heffer
      t.string :dob
      t.string :descendant_of
      t.string :immunization

      t.timestamps
    end
  end
end
