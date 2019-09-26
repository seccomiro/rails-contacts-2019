class CreateContactsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts_users do |t|
      t.references :contact, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
