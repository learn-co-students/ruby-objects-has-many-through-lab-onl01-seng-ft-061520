class Appointment

    attr_accessor :date, :patient, :doctor

    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient 
        @doctor = doctor 
        @@all << self 
        doctor.add_appointment(self)
        patient.add_appointment(self)
    end
    

    def self.all
        @@all
    end


   


end
