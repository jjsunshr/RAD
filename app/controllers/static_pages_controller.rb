class StaticPagesController < ApplicationController
  def home
    try = 0
    while true
      id = rand(3) + 1
      id = "%04d" % id
      puts "id is #{id}"

      try = try + 1
      if cookies[id] != "Y" or try > 3
        break
      end
    end

    @item = Item.new()
    @item.item_id = id
    @item.item_image = "images/#{id}.jpg"
  end

  def add
    id = params[:id]
    puts id

    cookies[id] = "Y"
    redirect_to :action => 'home'
  end

  def about
  end
end
