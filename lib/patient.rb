class Patient 
  
  attr_accessor :name, :doctor, :date 
  
  @@all = []
  
  def initialize(name) 
    @name = name
    @@all << self  
  end 
  
  def self.all 
    @@all 
  end 

  def new_appointment(date, doctor) 
    Appointment.new(date, self, doctor)
  end 

  def appointments 
    Appointment.all.select do |appt|
      appt.patient == self 
      #appt.date  
    end
  end 
  
  def doctors 
    Appointment.all.collect do |appt|
      appt.doctor == self 
      appt.doctor 
    end 
  end 
  
end 