require './environment'
require 'sinatra'
require 'thin'

configure :development do  
  DataMapper.auto_upgrade!
end
  
before do
end
  
helpers do
end

get '/' do
  @soups = Soup.all :order => :number.asc
  @sandwiches = Sandwich.all :order => :number.asc
  @desserts = Dessert.all :order => :number.asc
    
  erb :home
end

# ------------ SOUPS

# get '/soups' do    
#   @soups = Soups.all(:order => [ :id.desc ])
#   if @soups.empty?
#     flash[:error] = 'No Soups found. Add your first below.'
#   end
#   erb :soups
# end
# 
# post '/soups' do
#   n = Soups.new
#   n.number = params[:number]
#   n.title = params[:title]
#   n.price = params[:price]
#   n.description = params[:description]
#   n.image = params[:image]  
#   n.created_at = Time.now
#   n.updated_at = Time.now
#   n.save
#   
#   if n.save
#     redirect '/soups', :notice => 'Soups created successfully.'
#   else
#     redirect '/soups', :error => 'Failed to save soups.'
#   end
#   
# end

# ------------ Sandwiches

# get '/sandwiches' do    
#   @sandwiches = Sandwiches.all(:order => [ :id.asc ])
#   if @sandwiches.empty?
#     flash[:error] = 'No Sandwiches found. Add your first below.'
#   end
#   erb :sandwiches
# end
# 
# post '/sandwiches' do
#   n = Sandwiches.new
#   n.number = params[:number]
#   n.title = params[:title]
#   n.price = params[:price]
#   n.description = params[:description]
#   n.image = params[:image]  
#   n.created_at = Time.now
#   n.updated_at = Time.now
#   n.save
#   
#   if n.save
#     redirect '/sandwiches', :notice => 'sandwiches created successfully.'
#   else
#     redirect '/sandwiches', :error => 'Failed to save sandwiches.'
#   end
#   
# end

# ------------ Desserts

# get '/desserts' do    
#   @desserts = Desserts.all :order => :number.asc
# 
#   if @desserts.empty?
#     flash[:error] = 'No Desserts found. Add your first below.'
#   end
#   
#   erb :desserts
# end
# 
# post '/desserts' do
#   n = Desserts.new
#   n.number = params[:number]
#   n.title = params[:title]
#   n.price = params[:price]
#   n.description = params[:description]
#   n.image = params[:image]  
#   n.created_at = Time.now
#   n.updated_at = Time.now
#   n.save
#   
#   if n.save
#     redirect '/desserts', :notice => 'desserts created successfully.'
#   else
#     redirect '/desserts', :error => 'Failed to save desserts.'
#   end
#   
# end
# 
# get '/success' do
#   erb :success
# end
  
private
