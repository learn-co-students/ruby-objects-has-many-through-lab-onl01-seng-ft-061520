class Patient
    attr_accessor :name
    @@all = []
    def self.all
        @@all
    end
    def initialize(name)
        @name = name
        @@all << self
    end
    def new_appointment(string_date, doctor)
        Appointment.new(string_date, self, doctor)
    end
    def appointments
        Appointment.all.select {|appt| appt.patient.name == self.name}
    end
    def doctors
        appointments.map {|appt| appt.doctor}
    end
end
