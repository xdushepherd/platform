class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy,:new_instrument]
  layout  "admin",only: [:admin]


  def admin
    @q = Reservation.search(params[:q])
    @reservations = @q.result(distinct: true)    
  end 
  # GET /reservations
  # GET /reservations.json
  def index
    @reservations = Reservation.all
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
  end

  # GET /reservations/new
  def new
    @reservation = Reservation.new(instrument_id: params[:id])
  end

  # GET /reservations/1/edit
  def edit
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = Reservation.new(reservation_params)

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to @reservation, notice: 'Reservation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @reservation }
      else
        format.html { render action: 'new' }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  def new_instrument
    @reservation.update(new_instrument_reservation)
  end

  # PATCH/PUT /reservations/1
  # PATCH/PUT /reservations/1.json
  def update
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to @reservation, notice: 'Reservation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to reservations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    def new_instrument_reservation
      params.require(:reservation).permit(:instrument_id,timetable_attributes: [:t1,:t2,:t3,:t4,
                                   :t5,:t6,:t7,:t8,:t9,:t10])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:ser_number, :price, :user_id, :status,)
    end
end
