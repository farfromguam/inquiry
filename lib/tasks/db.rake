namespace :db do



  desc "Starts the database server"
  task start: :environment do
    # TODO: make task db:start work
    puts("Gentlemen!... Sart Your Databases")
  end


  desc "Torches and rebuilds the database for local development"
  task pheonix: :environment do
    Rake::Task['db:start'].invoke
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
    Rake::Task['db:seed'].invoke
    # The Life of King Henry the Eighth
    system('say "
      when the bird of wonder dies,
      the maiden phoenix,,
      Her ashes new create another heir
      as great in admiration as herself
    "')
    system('RAILS_ENV=local rails s')
  end



end
