class Meeting < ApplicationRecord
  belongs_to :user
  has_one :transcript, as: :transcriptable
  has_one :recording, as: :recordable
  has_many :comments, as: :commentable

  attr_accessor :user_email
  

end
