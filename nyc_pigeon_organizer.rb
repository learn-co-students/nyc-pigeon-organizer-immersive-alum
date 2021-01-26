require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_data = {}
  # data[:gender][:male].each do |male_pigeon|
  #   pigeon_data[male_pigeon] = Hash[
  #     [
  #       [:gender, Array.new(1, "male")]
  #     ]
  #   ]
  # end

  # data[:gender][:female].each do |female_pigeon|
  #   pigeon_data[female_pigeon] = Hash[
  #     [
  #       [:gender, Array.new(1, "female")]
  #     ]
  #   ]
  # end

  data.each do |attribute, content|
    content.each do |value, names|
      names.each do |name|
        if !pigeon_data[name]
          pigeon_data[name] = {}
        end
        if pigeon_data[name][attribute]
          pigeon_data[name][attribute].push(value.to_s)
        else
          pigeon_data[name][attribute] = Array.new(1, value.to_s)
        end
      end
    end
  end
  # data[:color].each do |color, names|
  #   names.each{ |name|
  #     if !pigeon_data[name]
  #       pigeon_data[name] = {}
  #     end
  #     if pigeon_data[name][:color]
  #       pigeon_data[name][:color].push(color.to_s)
  #     else
  #       pigeon_data[name][:color] = Array.new(1, color.to_s)
  #     end
  #   }
  # end
  # binding.pry
  return pigeon_data

end