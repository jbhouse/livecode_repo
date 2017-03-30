class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :iscute
      t.integer :user_id

      t.timestamps
    end
  end
end
