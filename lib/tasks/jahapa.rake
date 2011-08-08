desc "Reseed selected tables with data, deleting first"
task :reseed => :environment do
  Location.delete_all
  LocationName.delete_all
  Route.delete_all
  Stop.delete_all
  
  Rake::Task['db:seed'].execute   
end 