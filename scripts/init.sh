mysql -u vagrant -pvagrant -e 'create database railsboot;'
bundle install --path vendor/bundle
bundle exec rake secret > secret.txt
bundle exec rake db:reset RAILS_ENV=production
bundle exec rake db:migrate RAILS_ENV=production
bundle exec rake db:seed RAILS_ENV=production
sudo chmod 755 /usr/local/rbenv/shims
#TODO
#config/database.ymlを作成
#config/secrets.ymlを作成

sudo /etc/init.d/httpd restart
