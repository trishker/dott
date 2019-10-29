class AddWeekendToMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :weekend?, :boolean, default: false
  end
end
