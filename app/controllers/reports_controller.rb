class ReportsController < ApplicationController
  def new
  end

  def create
    @owners = Owner.limit(50)
    @owners.each do |owner|
      ProcessReportJob.perform_later(owner)
    end
  end
end
