class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string  :name
      t.text    :description
      t.string  :time

      t.timestamps null: false
    end
  end
end
