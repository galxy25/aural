# An API controller for accessing rants
class Api::V1::RantsController < Api::V1::BaseController
	def index
		respond_with Rant.all
	end

	def create
		respond_with :api, :v1, Rant.create(rant_params)
	end

	def destroy
		respond_with Rant.destroy(params[:id])
	end

	def update
		rant = Rant.find(params["id"])
		rant.update_attributes(rant_params)
		respond_with rant, json: rant
	end

	private

	def rant_params
		params.require(:rant).permit(:id, :title, :uri)
	end
end
