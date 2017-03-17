class AddFirstNameToLead < ActiveRecord::Migration[5.0]
  def change
    add_column :leads, :first_name, :string
  end
end
