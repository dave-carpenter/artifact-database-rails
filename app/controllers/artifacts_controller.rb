class ArtifactsController < ApplicationController
  def index
    @artifact = Artifact.all
  end

  def new
    @artifact = Artifact.new
  end

  def edit
    @artifact = Artifact.find(params[:id])
  end

  ##def checkin
    #@artifact = Artifact.find(params[:id])
    #@artifact.update(params.require(:current_location = nil, :return_date = nil))

  #end

  def create
      artifact = Artifact.create(artifact_params)
      redirect_to "/artifacts/#{artifact.id}"
  end

  def update
    @artifact = Artifact.find(params[:id])
    if @artifact.update(artifact_params)
      redirect_to @artifact
    else
      render 'checkout'
    end
  end

  def check_in
    @artifact = Artifact.find(params[:id])
    if @artifact.update(artifact_params_check_in)
      redirect_to @artifact
    else
      render 'checkout'
    end
  end

  private def artifact_params
    params.require(:artifact).permit(:name, :description, :department, :default_location, :current_location, :return_date, :times_moved)
  end

  private def artifact_params_check_in
    params.permit(:current_location, :return_date)
  end

  def report
    @artifact = Artifact.where("return_date < ?", Date.today)
  end


  def show
    id = params[:id]
    @artifact = Artifact.find(id)
  end

end
