#this file is like app.js or server.js in Express App
#you will always start it with these two lines of code
require 'bundler'
Bundler.require()

#whenever you add a new gem, you BUNDLE!!

get '/' do
  #like res.send in Express
  #remember the last line of any method is what is will return
  'This is a new server! Great job u coder u!'
end

#define a route-- DO NOT HAVE A TRAILING '/'
get '/hello' do
   "hello World"
end

#URL parameters
get '/hello/:some_param' do
  #URL parameters are store in params Hash

  the_param = params['some_param']
  "hello #{the_param}"

end

#render a template
#create an .erb file (like ejs)
#templating engine that comes with RUby
get '/template' do
  #specifiy templating name with a SYMBOL
  erb :index
end
