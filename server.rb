require 'sinatra'

get '/' do
 redirect to('/home')  
end

get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about
end

get '/favourites' do
  @fav_links = [
    'http://underconsideration.com/',
    'https://sidebar.io/',
    'https://medium.com/',
    'https://www.reddit.com/r/AsianBeauty/',
    'https://www.houseplantjournal.com/'
  ]
  erb :favourites
end
