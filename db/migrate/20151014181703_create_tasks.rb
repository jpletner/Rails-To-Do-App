class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
        t.column :name, :string
        t.column :desc, :string
        t.column :done, :boolean
        t.timestamps
    end
  end
end
