class Patient

  attr_reader :name, :appointment, :doctor
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointment = []
  end
  
  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
      @appointment << self
    end
  end

  def doctors
    self.appointments.map do |appointment|
      appointment.doctor
    end
  end
end