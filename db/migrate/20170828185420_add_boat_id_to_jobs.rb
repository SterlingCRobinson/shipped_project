class AddBoatIdToJobs < ActiveRecord::Migration[5.1]
  def change
  	add_column :jobs, :boat_id, :integer
  end
end
