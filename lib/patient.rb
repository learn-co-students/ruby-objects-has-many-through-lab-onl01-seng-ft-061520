class Patient

    attr_accessor :name, :doctor

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @appointments = []
        @doctor = doctor
        
    end

    def self.all 
        @@all
    end

    def new_appointment(date, doctor) 
        Appointment.new(date, self, doctor)
    end

    def appointments
        @appointments
    end

    def doctors
        appointments.map {|appointment| appointment.doctor}
    end

    def add_appointment(appointment)
        @appointments << appointment
        appointment.patient = self

    end

    








end
