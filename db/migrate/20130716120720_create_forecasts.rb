class CreateForecasts < ActiveRecord::Migration
  def change
    create_table :forecasts do |t|
      t.integer :forecast_result
      t.text :forecast_explination

      t.timestamps
    end
  end
end
