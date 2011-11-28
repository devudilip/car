class PagesController < ApplicationController
  def home
    @title ='home'
  end

  def newcars
    @title ='newcars'
  end

  def usedcars
    @title ='usedcars'
  end

  def sellcar
    @title ='sellcar'
  end

  def research
    @title ='research'
  end

  def finance
        @title ='finance'
  end

end
