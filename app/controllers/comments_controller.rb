class CommentsController < ApplicationController
	def create
		@team = Team.find(params[:team_id])

		@comment = @team.comments.build(comment_params)
		@comment.save

		render :index
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		render :index
	end

	private

	def comment_params
		params.require(:comment).permit(:content, :team_id)
	end
end
