require_relative 'config/environment.rb'

namespace :db do

  desc "Migrate the db"
  task :migrate do
    connection_details = YAML::load(File.open('config/database.yml'))
    ActiveRecord::Base.establish_connection(connection_details)
    ActiveRecord::Migrator.migrate("db/migrate/")
  end

task :reset => [:drop, :create, :migrate]

task :drop do
  system("dropdb playlister")
end

task :create do
  system("createdb playlister")
end

task :seed =>[:reset] do
  file_names = Dir.entries('./db/data').select{|file| file unless file.start_with?('.')}
  file_names.each do |file_name|
    values = file_name.match /(?<artist>.*) - (?<song>.*) \[(?<genre>.*)\].mp3/
    song = Song.new(name: values[:song])
    if artist = Artist.find_by_name(values[:artist])
      song.artist = artist
    else
      song.build_artist(name: values[:artist])
    end

    if genre = Genre.find_by_name(values[:genre])
      song.genre = genre
    else
      song.build_genre(name: values[:genre])
    end
    song.save
  end
end
end

#   desc "drop and recreate the db"
#   task :reset => [:drop, :migrate]
#
#   desc "drop the db"
#   task :drop do
#     connection_details = YAML::load(File.open('config/database.yml'))
#     File.delete(connection_details.fetch('database')) if File.exist?(connection_details.fetch('database'))
#   end
# end
