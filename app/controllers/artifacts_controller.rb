class ArtifactsController < ApplicationController


    def index
        artifact = Artifact.all 
        render json: artifact
    end 

    def show
        artifact = Artifact.find(params[:id])
        render json: artifact
      end
end
