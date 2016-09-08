class TimeEntriesController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @time_entries = @project.time_entries.where(created_at: Time.now.beginning_of_month..Time.now.end_of_month)
  end

  def new
    @project = Project.find(params[:project_id])
    @entry = @project.time_entries.new
  end

  def create
    #input
    #params[:project_id]
    #params[:time_entry]
    #1. find the project
    #2. instantiate the new time entry with time_entry params
    #3. save
    #4. redirect

    project = Project.find(params[:project_id])

    entry = project.time_entries.new(
        minutes: params[:time_entry][:minutes],
        hours: params[:time_entry][:hours],
        date: params[:time_entry][:date]
      )
    entry.save
    redirect_to "/projects/#{project.id}/time_entries"
  end
end

