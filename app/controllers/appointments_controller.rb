class AppointmentsController < ApplicationController
  before_action :set_doctor

  def index
    # @appointments = Appointment.all
    @eye = @doctor.appointments.where(apptype: 'eye')
    @radiology = @doctor.appointments.where(apptype: 'radiology')
    @surgery = @doctor.appointments.where(apptype: 'surgery')
  
  end

  def new
    @patients = Patient.all - @doctor.patients
    #Variable for users not in this course
    @appointment = @doctor.appointments.new
  end

  def create
    @appointment = @doctor.appointments.new(appointment_params)
    if @appointment.save
      redirect_to doctor_appointments_path(@doctor)
      #Redirects back to index path here
    else
      render :new
    end
  end
  
  def destroy
    @appointment.patients.find(params[:id]).destroy
    redirect_to patient_appointments_path(@doctor)
  end
  
  private
  def appointment_params
    params.require(:appointment).permit(:apptype, :patient_id)
  end

  def set_doctor 
    @doctor = Doctor.find(params[:doctor_id])
  end

end



# class EnrollmentsController < ApplicationController
#   before_action :set_course
  
#   def index
#     # @enrollments = @course.enrollments 
#     @teachers = @course.enrollments.where(role: 'teacher')
#     @tas = @course.enrollments.where(role: 'ta')
#     @students = @course.enrollments.where(role: 'student')

#   end

#   def new
#     @users = User.all - @course.users
#     #Variable for users not in this course
#     @enrollment = @course.enrollments.new
#   end


# end
