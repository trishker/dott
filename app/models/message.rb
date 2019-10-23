class Message < ApplicationRecord
   validates :message_title, presence: true
   validates :message_body, presence: true
   validates :message_category, presence: true
end
