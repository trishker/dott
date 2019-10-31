class Message < ApplicationRecord
   validates :message_title, presence: true, uniqueness: true
   validates :message_body, presence: true
   validates :message_category, presence: true,
             :inclusion => { :in => [ 'Food', 'Activity', 'Behaviour' ],
             :message   => "%{value} is not a valid category" }
end
