class ArtifactsController < ApplicationController

  def show
    send_file Artifact.find_by_application(params[:application]).get(params[:artifact]), :type => "text/html", :disposition => 'inline'
  end
  
end
