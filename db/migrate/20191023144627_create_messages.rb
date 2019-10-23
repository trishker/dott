class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :message_title
      t.string :message_body
      t.string :message_category

      t.timestamps
    end
  end
end
