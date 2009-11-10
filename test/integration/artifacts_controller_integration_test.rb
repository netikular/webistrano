require 'test_helper'

class ArtifactsControlerIntegrationTest < ActionController::IntegrationTest
  fixtures :artifacts
  def setup
    # @controller = ArtifactsController.new
    # @request    = ActionController::TestRequest.new
    # @response   = ActionController::TestResponse.new
    FileUtils.cp("#{RAILS_ROOT}/test/fixtures/test_file.txt", "/tmp/test_file.txt")
    #@user = login
  end
  test "assert true" do
    assert(true)
  end
  # 
  # test "assert that the right value came back" do
  #   get('/artifacts/bleh/test_file.txt')
  #   puts @response.body
  #   assert_equal("asdfasdfasdf", @response.body)
  # end
end