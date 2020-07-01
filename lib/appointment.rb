class Appointment
    attr_accessor :date, :patient, :doctor
    @@all = []
    def initialize(string_date, patient, doctor)
        @date = string_date
        @patient = patient
        @doctor = doctor
        @@all << self
    end
    def self.all
        @@all
    end
end

