class User < ActiveRecord::Base

  has_many :questions
  has_many :responses
  has_one :context, as: :contextable
  after_create ->(){ Context.create(contextable:self) }


end
