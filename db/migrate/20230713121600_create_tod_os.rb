class CreateTodOs < ActiveRecord::Migration[7.0]
  def change
    create_table :tod_os do |t|
      t.string :task
      t.boolean :isComplete
      t.timestamps
    end
  end
end
