class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!, :except => [:show, :index]
  before_filter :pages, :ads, :display_articles ,:latest_articles, :all_sorted_articles, :articles
  def pages
    @pages ||= Page.all
  end

  def ads
    @ads ||= Ad.all
  end
  
   def articles
    @articles ||= Article.all

  end
  
  def display_articles
    @display_articles ||= Article.all # paginate(:page => params[:page], :per_page => 10).scoped.order("created_at DESC")

  end

  def latest_articles
    @latest_articles ||= Article.limit(3).scoped.order("created_at DESC")
  end

  def all_sorted_articles
    @all_sorted_articles ||= Article.scoped.order("created_at DESC")
  end

end
