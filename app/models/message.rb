class Message < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user,optional: true
  belongs_to :notice,optional: true
  belongs_to :qa,optional: true
end
