require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    arrays = []
    role = self.characters.collect{|c|c.name}
    show = self.shows.collect {|s|s.name}
    combine = role.concat show
    arrays << combine.join(" - ")
    binding.pry
    combine
    # binding.pry
  end
end
