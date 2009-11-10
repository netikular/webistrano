require 'test_helper'

class ArtifactsControllerTest < ActionController::TestCase
  fixtures :artifacts
  
  def setup
    @controller = ArtifactsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
    FileUtils.cp("#{RAILS_ROOT}/test/fixtures/test_file.txt", "/tmp/test_file.txt")
    
    @user = login
  end
  
  test "should get the show route" do
    get :show, :application => "bleh", :artifact => "test_file.txt"
    assert_response :success, @response.body
  end
  
  test "should route to the right variables" do
    assert_generates("/artifacts/bleh/test_file.txt",
                     :controller => "artifacts",
                     :action => "show",
                     :application => "bleh",
                     :artifact => "test_file.txt")     
            
  end

end
