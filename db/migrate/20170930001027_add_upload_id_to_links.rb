class AddUploadIdToLinks < ActiveRecord::Migration[5.1]
  def change
    add_reference :links, :upload, foreign_key: true
  end
end
