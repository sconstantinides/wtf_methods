
class Object
  def wtf(class_name)

    if defined?(ActiveRecord::Base)
      excluded_methods = ActiveRecord::Base.methods
    else
      excluded_methods = Object.methods
    end

    class_methods = class_name.methods - excluded_methods
    instance_methods = class_name.instance_methods - excluded_methods

    puts "===================="
    puts " CLASS METHODS"
    puts "--------------------"

    if class_methods.empty?
      puts " [none]"
    else
      puts format_methods(class_methods)
    end

    puts "===================="
    puts " INSTANCE METHODS"
    puts "--------------------"

    if instance_methods.empty?
      puts " [none]"
    else
      puts format_methods(instance_methods)
    end

    puts "===================="

  end

  def format_methods(methods)

    method_array = []

    methods.sort.each do |method|
      if method_array.first && method[0] >= "a" && method[0] != method_array.last[1]
        method_array << "--------------------"
      end
      if method_array.last && method[0..-2] == method_array.last[1..-1] && method[-1] == "!"
        method_array[-1] = " #{method[0..-2]}(!)"
      else
        method_array << " #{method}"
      end
    end

    return method_array

  end
end
