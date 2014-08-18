require 'bundler/setup'
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

database_configurations = YAML::load(File.open('./db/config.yml'))
development_configuration = database_configurations['development']
ActiveRecord::Base.establish_connection(development_configuration)


#############################################

def main_menu
  loop do
    puts "\n  Welcome to the Survey Builder Program"
    puts "___________________________________\n\n"
    puts "Type 's'     to add or edit a survey"
    puts "Type 'd'     to delete a survey"
    puts "Type 'all'   to view all surveys"
    puts "Type 'q' to add or edit a question"
    puts "Type 'r' to add or edit responses for a question"
    puts "Type 'stat' - to view all responses for a survey"

    puts "Type 'x' - to exit the program"
    puts "___________________________________\n"

    case gets.chomp.downcase
    when 's'
      add_edit_survey
    when 'd'
      delete_survey
    when 'all'
      show_surveys
    when 'q'
      add_edit_question
    when 'r'
      add_edit_response
    when 'stat'
      view_statistics
    when 'x'
      puts "Leaving the survey program."
      exit
    else
      puts " Please choose a valid menu option"
      main_menu
    end
  end

  def user_menu

    puts "Type 'survey' - to take a survey"
    puts " Type 'mine' - to see all my surveys"
    case gets.chomp.downcase
    when 'survey'
      take_survey
    when 'mine'
      show_my_surveys
    else
      puts " Please choose a valid menu option"
      main_menu
    end
  end
end
main_menu
