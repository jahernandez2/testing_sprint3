class PublicationsController < ApplicationController
  def index
    if params[:club_name]
      @publications = Publication.where(:club_name => params[:club_name])
    else
      @publications = Publication.all
    end
  end

  def new
    @publication = Publication.new
  end

  def show
    @publication = Publication.find(params[:id])
  end

  def create
    @publication = Publication.new(publications_params)
    @publication.user_id = current_user.id
    if @publication.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def publications_params
    params.require(:publication).permit(:club_name, :club_address, :sport_name, :image)
  end
end
