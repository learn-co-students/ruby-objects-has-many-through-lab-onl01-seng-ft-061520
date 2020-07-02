class Doctor 
  
  attr_accessor :name, :patient, :appointment 
  
  @@all = []
  
  def initialize(name) 
    @name = name 
    @@all << self
  end 

  def self.all 
    @@all 
  end 

  def new_appointment(date, patient) 
    Appointment.new(date, patient, self)
  end 

  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self 
      appt.doctor 
    end 
  end 
  
  def patients 
    Appointment.all.collect do |appt|
      appt.patient == self 
      appt.patient
    end 
  end 
  
  
end 