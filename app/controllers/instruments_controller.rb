class InstrumentsController < ApplicationController
  before_action :set_instrument, only: [:show, :edit, :update, :destroy]
  # GET /instruments
  # GET /instruments.json
  
  def admin
    @q = Instrument.search(params[:q])
    @instruments = @q.result(distinct: true)    
  end

  def index
    @q = Instrument.search(params[:q])
    @instruments = @q.result(distinct: true)
  end

  # GET /instruments/1
  # GET /instruments/1.json
  def show
    @reservation = Reservation.create
    @timetable = @reservation.build_timetable
  end

  # GET /instruments/new
  def new
    @instrument = Instrument.new
  end

  # GET /instruments/1/edit
  def edit
  end

  # POST /instruments
  # POST /instruments.json
  def create
    @instrument = Instrument.new(instrument_params)
    respond_to do |format|
      if @instrument.save
        @timetable = @instrument.create_timetable
        @timetable.save
        format.html { redirect_to @instrument, notice: 'Instrument was successfully created.' }
        format.json { render action: 'show', status: :created, location: @instrument }
      else
        format.html { render action: 'new' }
        format.json { render json: @instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instruments/1
  # PATCH/PUT /instruments/1.json
  def update
    respond_to do |format|
      if @instrument.update(instrument_params)
        format.html { redirect_to admin_instruments_url }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instruments/1
  # DELETE /instruments/1.json
  def destroy
    @instrument.destroy
    respond_to do |format|
      format.html { redirect_to admin_instruments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instrument
      @instrument = Instrument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instrument_params
      params.require(:instrument).permit(:name, :description,:date_producted,
                                         :date_purchased,:brand,:unit_belongs_to,
                                         :type_belongs_to,:price_once,
                                         timetable_attributes: [:t1,:t2,:t3,:t4,
                                         :t5,:t6,:t7,:t8,:t9,:t10])
    end
end
