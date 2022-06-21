class Kettle
	def initialize
	@mode = mode
	end
  
	def mode
	p 'The Kettle is off, wanna to turn it on?'
  	 mode = "off"
   	 trig = gets.chomp 
  	 trig == "on" ?  (mode = "on"
  	 puts "Kettle is #{mode}")
       : (puts  "Error, please write correct order. Kernel is #{mode}");   
  end


  end
  
	def is_on?
		temp = 0
		case @mode
		when 'on' 
			puts "What do u want to do? Type 1 for adding water, type 2 for boiling water, type 3 for making a tea, type 4 to turn kettle off"
			working_mode = gets.chomp
			case working_mode
			when 1 
        puts "Type volume to add in ml."
        volume = gets.chomp
			add_water(volume)
			when 2 
				temp = 100
				puts "You can now make a tea"
			when 3
        puts "Insert volume of the cup for tea"
        cup_volume = gets.chomp
        cup_volume <= water ? water = water - cup_volume :  "Not enough water in kettle"
        when 4
          @mode = "off"
      else 
      puts "try again"  		
			end
		end
	end

  def is_off? 
    puts "Kettle is off, type 1 for adding water, type 2 to turn it on"
    off_mode = gets.chomp
    case off_mode
      when 1
        puts "Type volume to add in ml."
        volume = gets.chomp
		add_water(volume)
      when 2 
        @mode = "on"
      else "Error, try again"
    end
  end
  def add_water(t_volume)
    water = 0
    puts "Insert amount of water in ml "
				volume = gets.chomp
				if  volume + water <= 1000 
					water = volume+water 
				else puts "Error max volume is 1000 ml, current: #{water}"
				end   
end
