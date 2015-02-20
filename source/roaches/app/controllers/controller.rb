module RoachFinderController
  def self.run
    View.intro
    menu_choice = gets.chomp
    case menu_choice
    when "search by business name"
      puts "What is the name of the business?"
      business_name = gets.chomp
      roach_rating(business_name)
    when "search top violators by zipcode"
      puts "what is the zipcode of your neighborhood?"
      zipcode = gets.chomp
      find_top_roaches(zipcode)
    when "exit"
      exit
      View.goodbye
    end
  end

  def self.roach_rating(business_name)
    violator_id = Business.where(name: business_name).first.business_id
    puts "Risk Category: #{Violation.where(business_id: violator_id).first.risk_category}"
    puts "Description: #{Violation.where(business_id: violator_id).first.description}"
  end

  def self.find_top_roaches(zipcode)
    # businesses_in_this_area = Business.where(postal_code: zipcode)
    # businesses_in_this_area.select {|business|

    # }
    puts "found top 3 roaches"
  end
end
