class HomeController < ApplicationController
  require 'open-uri'
    
  def index
    @authors=JSON.load(open("http://maqe.github.io/json/authors.json"))
    @posts=JSON.load(open("http://maqe.github.io/json/posts.json"))
    
    @title="MAQE Forums"
  end
end
