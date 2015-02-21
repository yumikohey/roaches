module RoachFinderController
  def self.run
    View.intro
    View.menu
    menu_choice = gets.chomp
    case menu_choice
    when "business name"
      puts "What is the name of the business?"
      business_name = gets.chomp
      roach_rating(business_name)
    when "zipcode"
      puts "what is the zipcode of your neighborhood?"
      zipcode = gets.chomp
      find_top_roaches(zipcode)
    when "exit"
      View.goodbye
      exit
    end
  end

  def self.roach_rating(business_name)
    violator_id = Business.where(name: business_name).first.business_id
    puts "\e[31mRisk Category: #{Violation.where(business_id: violator_id).first.risk_category}\e[0m"
    puts "\e[33mDescription: #{Violation.where(business_id: violator_id).first.description}\e[0m"
    run
  end

  def self.find_top_roaches(zipcode)
    violators_array = []
    businesses_in_this_area = Business.where(postal_code: zipcode)
    businesses_in_this_area.pluck(:name).each {|violator|
      violators_array << violator
    }
    puts "Top violators: "
    violators_array.uniq.each_with_index {|violator, index|

      puts "\e[31m #{index+1}. #{violator} \e[0m"

    }
    run
  end

  # def self.find_latest_roaches(zipcode)
  #   violators_array = []
  #   businesses_in_this_area = Business.where(postal_code: zipcode)
  #   businesses_in_this_area.pluck(:name).each {|violator|
  #     violators_array << violator
  #   }

  end
end
