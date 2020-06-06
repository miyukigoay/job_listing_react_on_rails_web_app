class AddJobIdToRequirement < ActiveRecord::Migration[6.0]
  def change
    add_column :requirements, :job_id, :integer
    add_index :requirements, :job_id
  end
end
