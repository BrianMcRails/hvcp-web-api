class SsSetting < ApplicationRecord
  self.table_name = 'SSSettings'
  self.primary_keys = :GroupName,:KeyName

end
