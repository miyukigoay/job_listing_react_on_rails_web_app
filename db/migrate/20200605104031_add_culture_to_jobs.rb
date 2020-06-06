class AddCultureToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :culture, :string
  end
end
