class Response < ActiveRecord::Base

  belongs_to :user
  belongs_to :question
  has_one :context, as: :contextable
  after_create ->(){ Context.create(contextable:self) }

end
