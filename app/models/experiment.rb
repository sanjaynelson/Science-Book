class Experiment < ApplicationRecord
  belongs_to :proposal
  has_many :procedures
  has_many :comments, as: :commentable
  has_many :observations, as: :observable
end
