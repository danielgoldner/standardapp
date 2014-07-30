class AddBuddyToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :buddy, :string
  end
end
