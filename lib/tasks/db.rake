namespace :db do



  desc "Starts the database server"
  task start: :environment do
    # TODO: make task db:start work
    puts("Gentlemen!... Sart Your Databases")
  end


  desc "Cleans the database, and opens up a console for you to go digging aroud in"
  task surgery: :environment do
    puts("invoke - db:start")
    Rake::Task['db:start'].invoke

    puts("invoke - db:drop")
    Rake::Task['db:drop'].invoke

    puts("invoke - db:create")
    Rake::Task['db:create'].invoke

    puts("invoke - db:migrate")
    Rake::Task['db:migrate'].invoke

    puts("invoke - db:seed")
    Rake::Task['db:seed'].invoke

    system('say "Your scalpel sir"')
    system('rails c')
  end


  desc "Torches and rebuilds the database for local development"
  task pheonix: :environment do
    puts("invoke - db:start")
    Rake::Task['db:start'].invoke

    puts("invoke - db:drop")
    Rake::Task['db:drop'].invoke

    puts("invoke - db:create")
    Rake::Task['db:create'].invoke

    puts("invoke - db:migrate")
    Rake::Task['db:migrate'].invoke

    puts("invoke - db:seed")
    Rake::Task['db:seed'].invoke
    # The Life of King Henry the Eighth
    system('say "
      when the bird of wonder dies,
      the maiden phoenix,,
      Her ashes new create another heir
      as great in admiration as herself
    "')
    system('rails s')
  end



end
