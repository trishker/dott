require 'rails_helper'

RSpec.describe Message, type: :model do
  it "is valid with a message_title, message_body and message_category" do
    message = Message.new(
      message_title: 'Visualise The Year You Want',
      message_body: 'Imagine the year ahead in as much detail as you possibly can. '\
                    'What would you like to achieve? Look at all the things which fill your life. '\
                    'Can you offload something which doesn’t fit with your goals? Perhaps you can '\
                    'add an activity that does. Live the life you actually want.',
      message_category: 'Behaviour'
    )
    expect(message).to be_valid
  end

  it "is invalid without a message_title" do
    message = Message.new(message_title: nil)
    message.valid?
    expect(message.errors[:message_title]).to include("can't be blank")
  end

  it "is invalid without a message_body" do
    message = Message.new(message_body: nil)
    message.valid?
    expect(message.errors[:message_body]).to include("can't be blank")
  end

  it "is invalid without a message_category" do
    message = Message.new(message_category: nil)
    message.valid?
    expect(message.errors[:message_category]).to include("can't be blank")
  end

  it "is does not allow duplicate message_titles" do
    Message.create(
      message_title: 'Visualise The Year You Want',
      message_body: 'Sample text for body',
      message_category: 'Behaviour',
    )
    message = Message.new(
      message_title: 'Visualise The Year You Want',
      message_body: 'Other sample text for body',
      message_category: 'Food',
    )
    message.valid?
    expect(message.errors[:message_title]).to include("has already been taken")
  end
end
