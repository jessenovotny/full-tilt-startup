class AddWebsiteToLead < ActiveRecord::Migration[5.0]
  def change
    add_column :leads, :website, :string
  end
end
