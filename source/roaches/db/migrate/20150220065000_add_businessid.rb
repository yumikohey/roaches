class AddBusinessid < ActiveRecord::Migration
  def change
    add_column :businesses, :business_id, :integer
  end
end