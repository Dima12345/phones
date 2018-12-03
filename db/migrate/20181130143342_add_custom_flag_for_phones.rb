class AddCustomFlagForPhones < ActiveRecord::Migration[5.0]
  def change
    add_column :phones, :is_custom, :boolean, null: false, default: false
  end
end
