task :default => [:welcome]

namespace :db do

  desc 'Migrate the database'
  task :migrate => :environment do
    migrations = if ActiveRecord.version.version >= '5.2'
    ActiveRecord::Migration.new.migration_context.migrations
  else
    ActiveRecord::Migrator.migrations('db/migrate')
  end
  ActiveRecord::Migrator.new(:up, migrations, nil).migrate
  end

  desc 'Create the database'
  task :create do
    connection_details = YAML::load(File.open('config/database.yml'))
    admin_connection = connection_details.merge({'database'=> 'postgres',
                                                'schema_search_path'=> 'public'})
    ActiveRecord::Base.establish_connection(admin_connection)
    ActiveRecord::Base.connection.create_database(connection_details.fetch('database'))
  end

  desc 'Drop the database'
  task :drop do
    connection_details = YAML::load(File.open('config/database.yml'))
    admin_connection = connection_details.merge({'database'=> 'postgres',
                                                'schema_search_path'=> 'public'})
    ActiveRecord::Base.establish_connection(admin_connection)
    ActiveRecord::Base.connection.drop_database(connection_details.fetch('database'))
  end
end

namespace :run do
  desc "running"
  task :rspec do
    sh 'rspec spec/index_spec.rb'
  end
  task :discord do
    sh 'ruby bin/discord'
  end
  task :telegram do
    sh 'ruby bin/telegram'
  end
end

namespace :gem do
  desc "all about gem"
  task :install do
    sh 'bundle install'
	puts "install gem success"
	end
end

task :environment do
  load 'config/config.rb'
end

task :welcome do
  puts "hi follow my twitter https://twitter.com/rokhiminwahid"
end