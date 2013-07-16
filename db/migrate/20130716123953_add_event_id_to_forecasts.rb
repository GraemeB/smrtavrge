class AddEventIdToForecasts < ActiveRecord::Migration
  def change
    add_column :forecasts, :event_id, :integer
  end
end
