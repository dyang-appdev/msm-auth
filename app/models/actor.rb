# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  dob        :string
#  name       :string
#  bio        :text
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Actor < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: {
    scope: :dob,
    message: "should be unique with respect to date of birth"
  }
  
  has_many :characters
  
  # --- below are two alternative codes for has_many :characters---
  
  # has_many :characters, :class_name => "Character",  :foreign_key => "actor_id"
  
  # def characters
  #   return Character.where({actor.id => self.id })
  # end

  has_many :movies, through: :characters
end
