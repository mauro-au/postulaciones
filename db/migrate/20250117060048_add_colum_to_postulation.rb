class AddColumToPostulation < ActiveRecord::Migration[7.1]
  def change
    add_column :postulations, :checked, :boolean, default: false
  end
end
