class Conta < ActiveRecord::Base

establish_connection "#{Rails.env}_oabonlane"
  belongs_to :usuario
  belongs_to :cliente
end