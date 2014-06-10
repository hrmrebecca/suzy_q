class SuzyQ::Person < ActiveRecord::Base

  self.table_name = :suzy_q_people
  
  belongs_to :personable, polymorphic: true

end
