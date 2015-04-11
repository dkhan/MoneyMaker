class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :nickname
      t.string :email

      t.timestamps null: false
    end
  end
end
