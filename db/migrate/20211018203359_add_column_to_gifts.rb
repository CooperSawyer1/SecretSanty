class AddColumnToGifts < ActiveRecord::Migration[6.1]
  def change
    add_column :gifts, :website, :string
  end
end
