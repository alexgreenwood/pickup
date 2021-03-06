class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @players = User.all
  end

  def new
    @game = Game.new
    @users = User.all
  end

  def create
    @game = Game.new
    @game.user_id = current_user.id
    @game.location = params[:location]
    @game.time = params[:time]
    @game.date = params[:date]
    @game.sport = params[:sport]

    @users = User.all
    @users.each do |user|
      if params["player_#{user.id}"].present?
        i = Invite.new


      end
    end

    if @game.save
      redirect_to "/my_games", :notice => "Game created successfully."
    else
      render 'new'
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])

    @game.user_id = current_user.id
    @game.location = params[:location]
    @game.time = params[:time]
    @game.date = params[:date]
    @game.sport = params[:sport]

    if @game.save
      redirect_to "/my_games", :notice => "Game updated successfully."
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
    @games = current_user.games
    @games_in = current_user.rsvps
    @games_to_reply_to = current_user.invites

  end




end
