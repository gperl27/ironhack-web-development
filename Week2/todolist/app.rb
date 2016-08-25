require "sinatra"
require "sinatra/reloader" if development?
require "pry"
require_relative("lib/task.rb")
require_relative("lib/todolist.rb")

todo = TodoList.new("Josh")
todo.load_tasks

enable(:sessions)

get '/' do
	erb :home
end

get '/tasks' do
	@tasks = todo.tasks
	erb :task_index
end

get '/new_task' do
	erb :new_task
end

post '/complete' do
	query = params[:complete_task].to_i
	todo.find_task_by_id(query).complete!
	todo.save
	redirect '/tasks'
end

post '/delete' do
	query = params[:delete_task].to_i
	id = todo.find_task_by_id(query)
	todo.delete_task(query)
	todo.save
	redirect '/tasks'
end

post '/new_task' do
	todo.add_task(params[:content])
	todo.save
	redirect '/tasks'
end

# get "/session_test/:test" do
# 	text = params[:test]
# 	session[:saved_value] = text
# end

# get "/session_show" do
# 	"Now in the session: " + session[:saved_value]
# end

