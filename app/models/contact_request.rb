# == Schema Information
#
# Table name: contact_requests
#
#  id         :bigint           not null, primary key
#  email      :string
#  message    :text
#  name       :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ContactRequest < ApplicationRecord
  validates :name, :email, :message, presence: true
end
