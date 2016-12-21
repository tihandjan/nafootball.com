# config valid only for current version of Capistrano
lock "3.7.1"

set :application, "nafootball"
set :repo_url, "git@github.com:tihandjan/nafootball.com.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/deployer/nafootball"
set :deploy_user, 'deployer'


# Default value for :linked_files is []
# set :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# set :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system", "public/uploads"
set :linked_files, %w{config/database.yml config/secrets.yml public/sitemap.xml.gz}
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}
# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5


namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # execute :touch, release_path.join('tmp/restart.txt')
      invoke 'unicorn:restart'
    end
  end
  desc 'Create sitemap and ping search engines'
    task :refresh do
      on roles :web do
        within release_path do
          with rails_env: fetch(:rails_env) do
           execute :rake, "sitemap:refresh"
          end
        end
      end
    end

  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
  after :finishing, 'sitemap:refresh'
end