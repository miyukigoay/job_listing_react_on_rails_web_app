class CreateRequirements < ActiveRecord::Migration[6.0]
  def change
    create_table :requirements do |t|
      t.string :jobreferences
      t.string :description

      t.timestamps
    end
  end
end
