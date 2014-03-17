class Admin::InstrumentsController < Admin::ApplicationController
  before_action :set_admin_instrument, only: [:show, :edit, :update, :destroy]

  # GET /admin/instruments
  # GET /admin/instruments.json
  def index
    @q = Instrument.search(params[:q])
    @instruments = @q.result(distinct: true)  
  end

  # GET /admin/instruments/1
  # GET /admin/instruments/1.json
  def show
    @timetable ||= @instrument.create_timetable
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
        @instrument.build_timetable.save
        format.html { redirect_to @instrument, notice: 'Instrument was successfully created.' }
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
        format.html { redirect_to @instrument, notice: 'Instrument was successfully updated.' }
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_instrument
      @instrument = Instrument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_instrument_params
      params.require(:instrument).permit(:name, :description,:date_producted,
                                         :date_purchased,:brand,:unit_belongs_to,
                                         :type_belongs_to,:price_once,:producted_factory,
                                         :adddress,:specification,
                                         timetable_attributes: [:day,:t1,:t2,:t3,:t4,
                                         :t5,:t6,:t7,:t8,:t9,:t10,:t11,:t12,:t13,
                                         :t14,:t15,:t16,:t17,:t18,:t19,:t20,:t21,
                                         :t22,:t23,:t24])
    end
end
