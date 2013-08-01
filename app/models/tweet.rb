class Tweet < ActiveRecord::Base
  belongs_to :user

  validates :content, presence: true, length: {minimum: 0, maximum: 140}
end
