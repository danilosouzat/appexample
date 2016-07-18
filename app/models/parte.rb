class Parte < ActiveRecord::Base
  establish_connection "#{Rails.env}_qa"

   belongs_to :processo
end