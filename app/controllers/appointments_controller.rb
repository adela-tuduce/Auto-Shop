class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD
  before_action :appointment_duration, only: :create
=======
>>>>>>> 7af8ec578802743010d6a88815332b5e7125bd57

  # GET /appointments
  # GET /appointments.json
  def index
    @appointments = Appointment.all
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
<<<<<<< HEAD
    @appointment = Appointment.find(params[:id])
=======
>>>>>>> 7af8ec578802743010d6a88815332b5e7125bd57
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
<<<<<<< HEAD
=======
    @appointment = Appointment.new(appointment_params)

>>>>>>> 7af8ec578802743010d6a88815332b5e7125bd57
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
<<<<<<< HEAD

    def appointment_duration 
      ok = 1
      val = 1
      @appointment = Appointment.new(appointment_params)
      @service = Service.find(params[:appointment][:services])
      @appointment.services << @service
      @duration = @service.time
      if(@duration > 60)
        @duration += @duration/60 * 10
      end
      
      @end_time = @appointment.hour + @duration.minutes

      @appointments = Appointment.all
      @appointments.each do |appointment|
        overlap = [0, [Service.find(params[:appointment][:services]).time + appointment.hour.to_i, @end_time.to_i].min - [appointment.hour.to_i, @appointment.hour.to_i].max].max
        if overlap/24/60 < Service.find(params[:appointment][:services]).time
            ok = 0
        end

      end
      unless ok == 1
        flash.now[:notice] = "Appointment already taken!"
        render 'new'
      end
    end



    def appointment_delay
       k = 1
       param = 0
       @appointments = Appointment.all
       @appointments.each do |appointment|
        if(Service.find(params[:appointment][:services]).time + appointment.hour.to_i - @appointment.hour.to_i < 15)
          k = 0
          if k == 0
            param = Service.find(params[:appointment][:services]).time + appointment.hour.to_i - @appointment.hour.to_i
          end
        end
      end
      if k == 0
          flash.now[:notice] = "15 minutes break! Try #{param} minutes later!"
          render 'new'
        end
    end
end
=======
end
>>>>>>> 7af8ec578802743010d6a88815332b5e7125bd57
