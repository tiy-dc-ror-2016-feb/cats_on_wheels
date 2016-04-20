require 'test_helper'

class ProcessReportJobTest < ActiveJob::TestCase
  test "can be run" do
    owner = owners(:russell)
    ProcessReportJob.perform_now(owner)
  end
end
