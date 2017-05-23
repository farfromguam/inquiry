class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :question, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
