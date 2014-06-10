class SuzyQ::Task < ActiveRecord::Base

  self.table_name = :suzy_q_tasks

  belongs_to :taskable, polymorphic: true
end
