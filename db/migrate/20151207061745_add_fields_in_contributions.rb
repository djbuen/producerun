class AddFieldsInContributions < ActiveRecord::Migration
  def change
    add_column :contributions,:remote_refund_key,:string
  end
end
