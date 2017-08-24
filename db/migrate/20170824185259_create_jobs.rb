class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string   :name
      t.integer  :containers
      t.integer  :cost
      t.text     :description
      t.string   :origin
      t.string   :destination

      t.timestamps
    end
  end
end
