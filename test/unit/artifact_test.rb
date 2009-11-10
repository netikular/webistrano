require 'test_helper'

class ArtifactTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "build path" do
    assert_equal("/home/bleh/file_name.txt", create_artifact("bleh", "/home/bleh/").get("file_name.txt"))
  end
  
  test "build actual path" do
    art = create_artifact
    assert_equal("/tmp/file_name.txt", art.get("file_name.txt") )
  end
  
  private
  def create_artifact(application="bleh", path="/tmp/")
    Artifact.create(:application => application , :path => path)
  end
end
