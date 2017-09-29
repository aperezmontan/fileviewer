class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :uid
      t.datetime :last_viewed

      t.timestamps
    end
  end
end
