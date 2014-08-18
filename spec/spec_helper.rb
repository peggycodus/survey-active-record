require 'bundler/setup'
Bundler.require(:default, :test)
Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

database_configurations = YAML::load(File.open('./db/config.yml'))
test_configuration = database_configurations['test']
ActiveRecord::Base.establish_connection(test_configuration)

RSpec.configure do |config|
  config.after(:each) do
    Person.all.each do |person|
      person.destroy
    end
    Survey.all.each do |survey|
      survey.destroy
    end
    Question.all.each do |question|
      question.destroy
    end
    Response.all.each do |response|
      response.destroy
    end
  end
end
