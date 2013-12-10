
module WTF
  def self.[](class_name)

    method_array = []

    if defined?(ActiveRecord::Base)
      target_methods = class_name.methods - ActiveRecord::Base.methods
    else
      target_methods = class_name.methods - Object.methods
    end

    target_methods.sort.each do |method|
      if method_array.first && method[0] >= "a" && method[0] != method_array.last[1]
        method_array << "--------------------"
      end
      method_array << " #{method}"
    end

    puts "===================="
    if method_array.empty?
      puts " [none]"
    else
      puts method_array
    end
    puts "===================="

  end
end
