class IndexLinksOnUid < ActiveRecord::Migration[5.1]
  def change
    add_index :links, :uid, unique: true
  end
end
