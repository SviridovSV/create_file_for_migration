namespace :db do
  desc "Create file for migration."
  task :create_migration => [:environment] do
    file_name = ENV['name'].to_s.split('_').each {|i| i.capitalize!}.join
    full_file_name = Time.now.strftime("%Y%m%d%H%M%S").to_s + '_' + file_name
    FileUtils.cp './lib/tasks/migration.example', "./db/migrate/#{full_file_name}.rb"
  end
end