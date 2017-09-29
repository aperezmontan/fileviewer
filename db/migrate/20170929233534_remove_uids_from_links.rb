class RemoveUidsFromLinks < ActiveRecord::Migration[5.1]
  def change
    remove_column :links, :uid
  end
end
