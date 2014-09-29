class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :task
      t.boolean :done, default: false
      t.date :duedate
      t.time :duetime
      t.references :project, index: true

      t.timestamps
    end
  end
end
