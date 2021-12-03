class CreateTravels < ActiveRecord::Migration[6.1]
  def change
    create_table :travels do |t|
      t.string :area
      t.string :prefecture
      t.string :name
      t.text :summary
      t.string :access
      t.string :image

      t.timestamps
    end
  end
end
