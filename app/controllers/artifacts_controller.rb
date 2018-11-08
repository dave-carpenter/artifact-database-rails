class ArtifactsController < ApplicationController
  def index
    @artifact = Artifact.all
  end

  def new
    @artifact = Artifact.new
  end

  def create
      new_artifact = params.require(:artifact).permit(:name, :description, :department, :default_location)
      artifact = Artifact.create(new_artifact)
      redirect_to "/artifacts/#{artifact.id}"
  end

  def show
    id = params[:id]
    @artifact = Artifact.find(id)
  end

end
