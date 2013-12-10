
module Methods
  def self.prop(class_name)

    methods = []
    (class_name.methods - Object.methods).sort.each do |method|

      if methods.first && method[0] >= "a" && method[0] != methods.last[1]
        methods << "--------------------"
      end

      methods << " #{method}"

    end

    puts "===================="
    puts methods
    puts "===================="

  end

  def self.all(class_name)

    methods = []
    class_name.methods.sort.each do |method|

      if methods.first && method[0] >= "a" && method[0] != methods.last[1]
        methods << "--------------------"
      end

      methods << " #{method}"

    end

    puts "===================="
    puts methods
    puts "===================="

  end
end
