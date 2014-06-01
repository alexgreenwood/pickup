class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new
    @game.user_id = params[:user_id]
    @game.location = params[:location]
    @game.time = params[:time]
    @game.date = params[:date]
    @game.sport = params[:sport]

    if @game.save
      redirect_to "/games", :notice => "Game created successfully."
    else
      render 'new'
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])

    @game.user_id = params[:user_id]
    @game.location = params[:location]
    @game.time = params[:time]
    @game.date = params[:date]
    @game.sport = params[:sport]

    if @game.save
      redirect_to "/games", :notice => "Game updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @game = Game.find(params[:id])

    @game.destroy

    redirect_to "/games", :notice => "Game deleted."
  end

  def my_games
    @game = Game.all
  end




end
