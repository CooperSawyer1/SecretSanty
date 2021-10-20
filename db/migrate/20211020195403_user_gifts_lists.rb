class UserGiftsLists < ActiveRecord::Migration[6.1]
  def change
    create_table :users_gift_lists do |t|
      t.references :user
      t.references :gift_list

    end
  end
end
