class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.has_attached_file :image
      t.string :description
      t.integer :detail_id

      t.timestamps
    end
  end
end
