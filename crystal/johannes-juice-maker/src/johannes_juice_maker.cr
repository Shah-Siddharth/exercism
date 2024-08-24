class JuiceMaker
    def self.debug_light_on?
        true
    end

    def initialize(fluid : Int32)
        @running = false
        @fluid = fluid
    end

    def add_fluid(amount)
        @fluid += amount
    end

    def running?
        @running
    end

    def start
        @running = true
    end

    def stop(minutes)
        @running = false
        @fluid -= (minutes * 5)
        @fluid
    end
end
