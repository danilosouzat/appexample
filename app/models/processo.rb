class Processo < ActiveRecord::Base
  establish_connection "#{Rails.env}_qa"

   has_many :partes
end