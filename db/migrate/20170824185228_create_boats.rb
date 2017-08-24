class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table  :boats do |t|
      t.string    :name
      t.string    :loc
      t.integer   :containers, limit: 10
      t.integer   :user_id

      t.timestamps
    end
    add_index :boats, :name, unique: true
  end
end
