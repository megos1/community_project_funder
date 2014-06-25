class Project < ActiveRecord::Base
  belongs_to :user
  # has_many :projectitems
end
