class Admin::InstrumentsController < Admin::ApplicationController
  before_action :set_admin_instrument, only: [:show, :edit, :update, :destroy,:schedule]

  # GET /admin/instruments
  # GET /admin/instruments.json
  def index
    @q = Instrument.search(params[:q])
    @instruments = @q.result(distinct: true)  
  end

  # GET /admin/instruments/1
  # GET /admin/instruments/1.json
  def show
  end

  # GET /admin/instruments/new
  def new
    @instrument = Instrument.new
  end

  # GET /admin/instruments/1/edit
  def edit
  end

  # POST /admin/instruments
  # POST /admin/instruments.json
  def create
    @instrument = Instrument.new(admin_instrument_params)
    respond_to do |format|
      if @instrument.save
        format.html { redirect_to admin_instrument_url(@instrument), notice: 'Instrument was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_instrument }
      else
        format.html { render action: 'new' }
        format.json { render json: @instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/instruments/1
  # PATCH/PUT /admin/instruments/1.json
  def update
    respond_to do |format|
      if @instrument.update(admin_instrument_params)
        format.html { redirect_to admin_instrument_url(@instrument), notice: 'Instrument was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/instruments/1
  # DELETE /admin/instruments/1.json
  def destroy
    @instrument.destroy
    respond_to do |format|
      format.html { redirect_to instruments_url }
      format.json { head :no_content }
    end
  end

  def schedule
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_instrument
      @instrument = Instrument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_instrument_params
      params.require(:instrument).permit(:name, :description,:date_producted,
                                         :date_purchased,:brand,:unit_id,
                                         :purchased_price,:producted_factory,
                                         :address,:specification,:useage
                                         )
    end
end
