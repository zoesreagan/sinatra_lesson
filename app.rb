#this file is like app.js or server.js in Express App
#you will always start it with these two lines of code
require 'bundler'
Bundler.require()

#whenever you add a new gem, you BUNDLE!!

get '/' do
  'This is a new server! Great job u coder u!'
end
