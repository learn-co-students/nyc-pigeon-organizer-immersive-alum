require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  all_names = []
  pigeon_list = {}
  data.each	do |attribute, another_hash|
  	all_names << another_hash.values
  end

  all_names = all_names.flatten.uniq
  binding.pry

  all_names.each do	|name|
  	pigeon_list[name] = {
  		color: [],
  		gender: [],
  		lives: []
  	}
  	pigeon_list[name].keys.each do |key|
	  	data.each do |attribute, another_hash|
		  	another_hash.each do |color_gender_lives, names|
		  		if names.include?(name)
		  			pigeon_list[name][key] << color_gender_lives.to_s
		  		end
		  	end
	  	end
	  end
  end
  pigeon_list
  
end