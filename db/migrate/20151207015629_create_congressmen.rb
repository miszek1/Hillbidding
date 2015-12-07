class CreateCongressmen < ActiveRecord::Migration
  def change
    create_table :congressmen do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :gender

      t.timestamps null: false
    end
  end
end
