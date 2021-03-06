class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :tel
      t.string :mobile
      t.string :company
      t.text :content
      t.boolean :contact_via_email
      t.boolean :contact_via_sms

      t.timestamps
    end
  end
end
