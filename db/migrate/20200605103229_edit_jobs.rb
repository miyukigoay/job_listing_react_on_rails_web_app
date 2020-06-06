class EditJobs < ActiveRecord::Migration[6.0]
  def change
    remove_column :jobs, :steps, :string
    remove_column :jobs, :source, :string
    add_column :jobs, :company, :string
    add_column :jobs, :responsibilities, :string
  end
end
