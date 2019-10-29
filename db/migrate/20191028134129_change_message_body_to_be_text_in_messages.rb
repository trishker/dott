class ChangeMessageBodyToBeTextInMessages < ActiveRecord::Migration[6.0]
  def up
    change_table :messages do |t|
      t.change :message_body, :text
    end
  end

  def down
    change_table :messages do |t|
      t.change :message_body, :string
    end
  end
end
