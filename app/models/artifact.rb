class Artifact < ActiveRecord::Base
  def get(artifact)
    File.join(path, artifact)
  end
end
