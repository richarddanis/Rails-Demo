class NameStrategy
    def get_animal_name()
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
