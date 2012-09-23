class ChangeColumnToNews < ActiveRecord::Migration
  def up
   change_column :news, :content, :text
  end

  def down
  end
end
