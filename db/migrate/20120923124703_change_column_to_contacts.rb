class ChangeColumnToContacts < ActiveRecord::Migration
  def up
   change_table :contacts do |t|
      t.remove :contact_via_email, :contact_via_sms
      t.boolean :contact_via_email, :default => false
      t.boolean :contact_via_sms, :default => false
    end
  end

  def down
  end
end
