class SuzyQCreateTables < ActiveRecord::Migration
  def change
    create_table :suzy_q_people do |t| 
      t.string  :type,           null: false

      t.references :personable, polymorphic: true
      t.timestamps
    end

    create_table :suzy_q_tasks do |t|
      t.string  :status,         null: false
      t.date    :completed_on
      t.integer :queue_id,       null: false
      t.integer :assigned_to_id, null: false
      t.integer :created_from_task_id

      t.references :taskable, polymorphic: true
      t.timestamps
    end

    create_table :suzy_q_queues do |t|
      t.string  :status,         null: false
      t.date    :completed_on
      t.string  :description,    null: false
      t.integer :queue_type_id,  null: false

      t.timestamps
    end

    create_table :suzy_q_queue_types do |t|
      t.string  :label,          null: false
      t.string  :partial_name,   null: false

      t.timestamps
    end
  end
end
