=begin
class AutenticacaoDatabase < ActiveRecord::Base
  self.abstract_class = true
  establish_connection "#{Rails.env}_qa"

end
=end
