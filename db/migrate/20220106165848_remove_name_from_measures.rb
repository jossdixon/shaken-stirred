class RemoveNameFromMeasures < ActiveRecord::Migration[6.0]
  def change
    remove_column :measures, :name, :string
  end
end
