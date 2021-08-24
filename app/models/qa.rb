class Qa < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :user,optional: true
  has_many :notices
  has_many :messages
end
