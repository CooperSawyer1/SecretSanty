class ChangeUserIdColumn < ActiveRecord::Migration[6.1]
  def change
    change_table :gifts do |t|
      t.remove :user_id
      t.integer :receiver_id
      t.integer :giver_id
    end
  end
end
