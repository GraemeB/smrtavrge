class ForecastsController < ApplicationController
  before_filter :authenticate_user!, only:[:new, :create, :edit, :update, :destroy]
 
  # GET /forecasts
  # GET /forecasts.json
  def index
    @forecasts = Forecast.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @forecasts }
    end
  end

  # GET /forecasts/1
  # GET /forecasts/1.json
  def show
    @forecast = Forecast.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @forecast }
    end
  end

  # GET /forecasts/new
  # GET /forecasts/new.json
  def new
    @event = Event.find(params[:event_id])
    @forecast = Forecast.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @forecast }
    end
  end

  # GET /forecasts/1/edit
  def edit
    @event = Event.find(params[:event_id])
    @forecast = Forecast.find(params[:id])
  end

  # POST /forecasts
  # POST /forecasts.json
  def create
    
    @event = Event.find(params[:event_id])
    @forecast = @event.forecasts.new(params[:forecast])
    
    respond_to do |format|
      if @forecast.save
        format.html { redirect_to @forecast, notice: 'Forecast was successfully created.' }
        format.json { render json: @forecast, status: :created, location: @forecast }
      else
        format.html { render action: "new" }
        format.json { render json: @forecast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /forecasts/1
  # PUT /forecasts/1.json
  def update
    @forecast = Forecast.find(params[:id])

    respond_to do |format|
      if @forecast.update_attributes(params[:forecast])
        format.html { redirect_to @forecast, notice: 'Forecast was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @forecast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forecasts/1
  # DELETE /forecasts/1.json
  def destroy
    @forecast = Forecast.find(params[:id])
    @forecast.destroy

    respond_to do |format|
      format.html { redirect_to forecasts_url }
      format.json { head :no_content }
    end
  end

end
