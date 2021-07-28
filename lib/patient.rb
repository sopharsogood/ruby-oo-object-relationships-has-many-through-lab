class Patient
    @@all = []
    attr_accessor :name

    def self.all
        @@all
    end

    def initialize(name)
        self.name = name
        @@all << self
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end

    def doctors
        doctors = []
        Appointment.all.each do |appointment|
            doctors << appointment.doctor if appointment.patient == self
        end
        doctors
    end

end