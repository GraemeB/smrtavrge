class Event < ActiveRecord::Base
  attr_accessible :cutoff_date, :description, :result, :title, :event_type

  has_many :forecasts 
end
