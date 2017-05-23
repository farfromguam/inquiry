class CreateContexts < ActiveRecord::Migration
  def change
    create_table :contexts do |t|
      t.references :contextable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
