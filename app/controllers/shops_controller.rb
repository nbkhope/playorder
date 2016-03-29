require 'pry'

class ShopsController < ApplicationController

  def index
    a = [1,2,3]

    if !params['a'].nil?
      a = params['a']
    end
  end

end
