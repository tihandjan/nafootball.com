# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
set :path, Rails.root
set :output, Rails.root.join('log', 'cron.log')
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
every 1.day, :at => '5:00 am' do
  rake "-s sitemap:refresh"
end

every 1.hours do
  runner "Table.set_table_data"
end

every 1.minute do
  runner "Match.set_games"
end

every 30.minutes do
  rake "ts:index"
end


