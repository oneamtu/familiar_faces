namespace :db do
  desc 'recreate the dummy database, run migrations, and seed'
  task :recreate => :environment do
    puts 'Dropping DB'
    Rake::Task['db:drop'].invoke

    puts 'Creating DB'
    Rake::Task['db:create'].invoke

    puts 'Migrating DB'
    Rake::Task['db:migrate'].invoke

    puts 'Seeding DB'
    Rake::Task['db:seed'].invoke
  end
end
