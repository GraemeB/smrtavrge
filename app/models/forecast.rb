class Forecast < ActiveRecord::Base
  attr_accessible :forecast_explination, :forecast_result

  belongs_to :event
end
