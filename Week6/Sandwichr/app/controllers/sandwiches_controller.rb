class SandwichesController < ApplicationController

	def index
		sandwiches = Sandwich.all
		render json: sandwiches
	end

	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end

	def add
		p 'test'

		sandwich = Sandwich.find(params[:id])
		ingredient = Ingredient.find(params[:ingredient_id])
		sandwich.ingredients.push(ingredient)

		redirect_to sandwich_path(sandwich.id)
	end


	def show

		sandwich = Sandwich.find_by(id: params[:id])

		#Sandwich.find_by(:id params[:id]).ingredients.all

		ingredients = sandwich.ingredients
		unless ingredients
			render json: {error: "Chef Boyardee hasn't created that sandwich yet."},
			status: 404
			return
		end


		# format.json { render json: ingredients.to_json(:include => :sandwiches)}
		render json: sandwich.to_json(:include => [:ingredients])
	end



	def update
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "Chef Boyardee hasn't created that sandwich yet."},
			status: 404
			return
		end

		sandwich.update(sandwich_params)
		render json: sandwich

		end
	def destroy
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "Chef Boyardee hasn't created that sandwich yet."},
			status: 404
			return
		end

		sandwich.destroy
		render json: sandwich
	end


	private

	def sandwich_params
		params.require(:sandwich)
		.permit(:name, :bread_type)
	end

end
