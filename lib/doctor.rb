class Doctor
    attr_accessor :name
    @@all = []
    def self.all
        @@all
    end
    def initialize(name)
        @name = name
        @@all << self
    end
    def new_appointment(string_date, patient)
        Appointment.new(string_date, patient, self)
    end
    def appointments
        Appointment.all.select {|appt| appt.doctor.name == self.name}
    end
    def patients
        appointments.map {|appt| appt.patient}
    end
end