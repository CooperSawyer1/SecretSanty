class AddBrandIdToGift < ActiveRecord::Migration[6.1]
  def change
    add_column :gifts, :brand_id, :integer
  end
end
