class Event < ActiveRecord::Base
  attr_accessible :cutoff_date, :description, :result, :title, :type

  has_many :forecasts 
end
