class RemoveJobreferencesFromRequirements < ActiveRecord::Migration[6.0]
  def change
    remove_column :requirements, :jobreferences, :string
  end
end
