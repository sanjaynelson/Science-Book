class User < ApplicationRecord
  has_many :proposals
  has_many :comments
  has_many :observations
end
