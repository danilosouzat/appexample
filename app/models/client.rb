class Client < ActiveRecord::Base

  establish_connection "#{Rails.env}_oabonlane"

  self.table_name = "clientes"

end
