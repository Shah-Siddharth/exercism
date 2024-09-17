class Reactor
  def self.criticality_balanced?(temperature, neutrons_emitted)
    (temperature < 800) && (neutrons_emitted > 500) && ((temperature * neutrons_emitted) < 500000)
  end

  def self.reactor_efficiency(voltage, current, theoretical_max_power)
    power_percentage = ((voltage * current) / theoretical_max_power) * 100
    if power_percentage >= 80
      "green"
    elsif power_percentage >= 60
      "orange"
    elsif power_percentage >= 30
      "red"
    else
      "black"
    end
  end

  def self.fail_safe(temperature, neutrons_produced_per_second, threshold)
    value = temperature * neutrons_produced_per_second
    if value < (0.9 * threshold)
      "LOW"
    elsif value < (1.1 * threshold)
      "NORMAL"
    else
      "DANGER"
    end
  end
end
