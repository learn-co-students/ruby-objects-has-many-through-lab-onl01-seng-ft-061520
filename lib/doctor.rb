class Doctor 

    attr_accessor :name, :patient, :appointment

    @@all = [] 

    def initialize(name)
        @name = name 
        @patient = patient
        @@all << self
        @appointments = []
        
       
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient) 
        Appointment.new(date, patient, self)
        
    end

    def patients
        appointments.map {|appointment| appointment.patient}
    end

    
    def appointments
        @appointments
    end

    def add_appointment(appointment)
        @appointments << appointment
        appointment.doctor = self
    end









end
