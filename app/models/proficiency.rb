class Proficiency < ActiveRecord::Base
  # Remember to create a migration

  belongs_to :skill
  belongs_to :user

  validates :user, :skill, :years, :presence => true
  validates :formal, :inclusion => {:in => [true, false]}

end
