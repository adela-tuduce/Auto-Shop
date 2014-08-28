class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  before_action :appointment_duration, only: :create

  # GET /appointments
  # GET /appointments.json
  def index
    @appointments = Appointment.all
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
    @appointment = Appointment.find(params[:id])
  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new
    @workplaces = Workplace.all
    @services = Service.all
    @cars = Car.all
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments
  # POST /appointments.json
  def create
    respond_to do |format|
      if @appointment.save
        format.html { redirect_to @appointment, notice: 'Appointment was successfully created.' }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment, notice: 'Appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).permit(:car_id, :hour, :date, :workplace_id)
    end
    def appointment_duration
      @appointment = Appointment.new(appointment_params)
      ok = 1
      val = 1
      duration = 0
      @service = Service.find(params[:appointment][:services]).uniq
      workplace = @appointment.workplace_id
      @service.each do |serv|
        @appointment.services << serv
        duration += serv.time
      end
      if(duration > 60)
        duration += duration/60 * 10
      end
      
      end_time = @appointment.hour.to_i + duration.minutes

      @appointments = Appointment.all
      @appointments.each do |appointment|
        serv_time = 0
        @service_app = Service.find(params[:appointment][:services]).uniq
        @service_app.each do |serv|
          serv_time += serv.time
        end
        
        if @appointment.hour.to_i <= serv_time.minutes + appointment.hour.to_i && appointment.hour.to_i <= end_time
          if check_workplace?(@appointment, workplace) == false
            ok = 0
            0/0
          end
        end
      end
      unless ok == 1
        flash.now[:notice] = "Appointment already taken!"
        render 'new'
      end
    end

    def check_workplace?(appointment, number)
      check = 1
      @appointments = Appointment.all
      @appointments.each do |appointment|
      if(number == appointment.workplace_id)
        check = 0
      end
    end
    if check == 1
      return true
    end
    flash.now[:notice] = "Choose another Workplace!"
    return false
    end
end

