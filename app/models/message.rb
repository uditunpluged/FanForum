# == Schema Information
#
# Table name: messages
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Message < ActiveRecord::Base
  belongs_to :user
  has_many :comments
end
