class CreateGifts < ActiveRecord::Migration[6.1]
  def change
    create_table :gifts do |t|
      t.string :name
      t.integer :price
      t.integer :user_id
      t.string :website
      t.integer :giver_id

      t.timestamps
    end
  end
end
