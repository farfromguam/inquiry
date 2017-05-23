class Question < ActiveRecord::Base

  belongs_to :user
  has_many :responses
  has_one :context, as: :contextable
  after_create ->(){ Context.create(contextable:self) }


end
