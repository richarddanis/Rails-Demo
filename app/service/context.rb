# defines the interface of interest to clients.
class Context
    # context maintains a reference to one of the Strategy objects. The
    # does not know the concrete class of a strategy. It should work with
    # all strategies via the Strategy interface.
    attr_writer :strategy
  
    # accepts a strategy through the constructor, but also
    # provides a setter to change it at runtime.
    def initialize(strategy)
      @strategy = strategy
    end
  
    # allows replacing a strategy object at runtime.
    def strategy=(strategy)
      @strategy = strategy
    end
  
    # delegates some work to the strategy object instead of
    # implementing multiple versions of the algorithm on its own.
    def do_some_business_logic
  
      puts 'Context: Sorting data using the strategy (not sure how it\'ll do it)'
      result = @strategy.get_animal_name()
      result

    end
  end