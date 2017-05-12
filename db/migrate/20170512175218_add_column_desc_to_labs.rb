class AddColumnDescToLabs < ActiveRecord::Migration[5.0]
  def change
    add_column :labs, :desc, :text
  end
end
