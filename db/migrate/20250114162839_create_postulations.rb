class CreatePostulations < ActiveRecord::Migration[7.1]
  def change
    create_table :postulations do |t|
      t.references :offer, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end 
