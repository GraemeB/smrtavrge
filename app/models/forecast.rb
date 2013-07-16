class Forecast < ActiveRecord::Base
  attr_accessible :forecast_explination, :forecast_result

  belongs_to :event

  validates_presence_of :forecast_result
end
