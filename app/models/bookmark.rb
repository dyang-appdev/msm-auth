# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  movie_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bookmark < ActiveRecord::Base
  
  belongs_to :movie
  belongs_to :user
  
end
