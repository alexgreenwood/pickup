class InvitesController < ApplicationController
  def index
    @invites = Invite.all
  end

  def show
    @invite = Invite.find(params[:id])
  end

  def new
    @invite = Invite.new
  end

  def create
    @invite = Invite.new
    @invite.rsvp = params[:rsvp]
    @invite.game_id = params[:game_id]
    @invite.user_id = current_user.id

    if @invite.save
      redirect_to "/invites", :notice => "Invite created successfully."
    else
      render 'new'
    end
  end

  def edit
    @invite = Invite.find(params[:id])
  end

  def update
    @invite = Invite.find(params[:id])

    @invite.rsvp = params[:rsvp]
    @invite.game_id = params[:game_id]
    @invite.user_id = current_user.id

    if @invite.save
      redirect_to "/invites", :notice => "Invite updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @invite = Invite.find(params[:id])

    @invite.destroy

    redirect_to "/invites", :notice => "Invite deleted."
  end

  def my_invites
    @invites = current_user.invites
    render 'index'
  end




end
