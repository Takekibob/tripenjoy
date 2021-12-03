class TravelsController < ApplicationController
  before_action :authenticate_user!
  def index
    if params[:search] == nil
      @travels= Travel.all
    elsif params[:search] == ''
      @travels= Travel.all
    else
      #部分検索
      @travels = Travel.where("area LIKE ? ",'%' + params[:search] + '%')
    end
  end

  def new
      @travel = Travel.new
  end

  def hokkaido
    @travels = Travel.where(category: 'hokkaido')
  end

  def tohoku
    @travels = Travel.where(category: 'tohoku')
  end

  def kitakanto
    @travels = Travel.where(category: 'kitakanto')
  end

  def shutoken
    @travels = Travel.where(category: 'shutoken')
  end

  def izuhakone
    @travels = Travel.where(category: 'izuhakone')
  end

  def koshinetu
    @travels = Travel.where(category: 'koshinetu')
  end

  def hokuriku
    @travels = Travel.where(category: 'hokuriku')
  end

  def tokai
    @travels = Travel.where(category: 'tokai')
  end

  def kinki
    @travels = Travel.where(category: 'kinki')
  end

  def chugoku
    @travels = Travel.where(category: 'chugoku')
  end

  def shikoku
    @travels = Travel.where(category: 'shikoku')
  end

  def kyushu
    @travels = Travel.where(category: 'kyushu')
  end

  def okinawa
    @travels = Travel.where(category: 'okinawa')
  end

  def create
    travel = Travel.new(travel_params)

    travel.user_id = current_user.id

      if travel.save
        redirect_to :action => "index"
      else
        redirect_to :action => "new"
      end
  end

  def show
    @travel = Travel.find(params[:id])
  end

  def edit
    @travel = Travel.find(params[:id])
  end

  def update
    travel = Travel.find(params[:id])
    if travel.update(travel_params)
      redirect_to :action => "show", :id => travel.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    travel = Travel.find(params[:id])
    travel.destroy
    redirect_to action: :index
  end

  private
  def travel_params
    params.require(:travel).permit(:area, :image, :category)
  end

end
