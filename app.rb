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
  #this is like res.render in Express
  erb :index
end

#partials are included in a "layout.erb" HAS TO BE CALLED THAT view
#via the yield statement!!!


#Passing data to our template
get '/friendster' do
  #pass any instance variables you declare will be passed to the templating engine
  @page_title = "Some friends of mine"
  @message = "Thanks for using Friendster 2.0 these are ur friends"
  @friends = [
    {
      name: "Zoe",
      hair: "blonde"
    },
    {
      name: "Irwin",
      hair: "hat on"
    },
    {
      name: "MJ",
      hair: "brown"
    }
  ]
  erb :friends
end
