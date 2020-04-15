# just a class, not a model. we do not inherit from database.
    # so you need to write out instantiation methods as we have learned before.
class Cli
    attr_reader :hiker

    def welcome_menu
        puts "Welcome to Trail Less Traveled."
        puts "During this crazy pandemic, us avid hikers and outdoor enthusiasts could find ourselves going stir crazy."
        puts "In times, where everyone and their mothers are heading to the outdoors to escape cabin fever, what is a hiker to do to find some peace and quiet on the trail?"
        puts "Trail Less Traveled app has got you covered. Use this app to find the least busy trail based on your preference of location, trail difficulty, trail length, and reviews."
        puts "Keep calm and hike on while practicing safe social distancing."
        puts "What is your name?"
        
        hiker_name = gets.chomp
        set_hiker(hiker_name)
    end

    def set_hiker(hiker_name)
        @hiker = Hiker.create(name: hiker_name)
        collect_hiker_choices
    end 

 
   # def user_path
        #puts "What do you want to do? Choose one option from the following:"
       # puts "I want to find a hiking trail."
        #puts "I want to leave a review for a trail"
        #user_path_input= gets.chomp.downcase

        #if 
        #end 
        

    def collect_hiker_choices
        traffic_input = traffic_choices
        location_input = location_choices
        length_input = length_choices
        difficulty_input = difficulty_choices
        elevation_input = elevation_choices
        #rating_input = rating_choices
        x= HikingTrail.trails_by_user_choice(traffic_input,location_input, length_input, difficulty_input, elevation_input)
        binding.pry 
    end   

    def traffic_choices
       puts "Choose your preferred level of traffic of a hiking trail from the following:"
       puts "High (ex. Wash park on a sunny Saturday)"
       puts "Medium (ex. I don't mind seeing some friendly faces on the trail.)"
       puts "Desolate (ex. I want to avoid human contact as much as possible.)"
       gets.chomp.downcase 
    end

    def location_choices
        puts "Choose city of your preference from the following:"
        puts "Boulder"
        puts "Denver"
        puts "Golden"
        gets.chomp.downcase
    end 

    def length_choices
       puts "Choose trail length of your preference from the following(in miles):"
       puts "0-3"
       puts "3-5"
       puts "5-10"
       length_input = gets.chomp    
            if length_input == "0-3"
                length_input_converted = 0..3
            elsif length_input == "3-5" 
                length_input_converted = 3..5
            else 
                length_input_converted = 5..10
            end
    end 

    def difficulty_choices
        puts "Choose trail difficulty of your preference from the following:"
        puts "Easy"
        puts "Medium"
        puts "Difficult"
        gets.chomp.downcase
    end 

    def elevation_choices
        puts "Choose elevation of your preference from the following(in feet)"
        puts "7000-8000"
        puts "8000-10,000"
        puts "10,000-14,000"
        elevation_input = gets.chomp    
            if elevation_input == "7000-8000"
                elevation_inputconverted = 7000..8000
            elsif elevation_input == "8000-10,000" 
                elevation_input_converted = 8000..10000
            else 
                elevation_input_converted = 10,000..14,000
            end
    end 
=begin
    def rating_choices
        puts "Choose rating of your preference from the following (1-5 star rating, 1-don't recommend 5-highly recommend):"
        puts 1
        puts 2
        puts 3
        puts 4
        puts 5
        gets.chomp.downcase
    end 
=end 
end 