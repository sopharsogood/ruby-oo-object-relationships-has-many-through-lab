class Appointment
    @@all = []
    attr_accessor :date, :patient, :doctor

    def self.all
        @@all
    end

    def initialize(date, patient, doctor)
        self.date = date
        self.patient = patient
        self.doctor = doctor
        @@all << self
    end

end

