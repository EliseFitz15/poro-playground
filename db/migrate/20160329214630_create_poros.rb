class CreatePoros < ActiveRecord::Migration
  def change
    create_table :poros do |t|
      t.string :name, null: false
      t.string :owner, null: false
      t.string :description, null: false
      t.string :poro_photo
      
      t.timestamps null: false
    end
  end
end
