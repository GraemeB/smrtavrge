class AddUserIdToForecasts < ActiveRecord::Migration
  def change
    add_column :forecasts, :user_id, :integer
  end
end
