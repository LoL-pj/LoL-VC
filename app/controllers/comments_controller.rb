class CommentsController < ApplicationController
	def create
		@team = Team.find(params[:team_id])

		@comment = @team.comments.build(comment_params)
		if @comment.save
			render 'comments/index.js.erb'
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		render 'comments/index.js.erb'
	end

	private

	def comment_params
		params.require(:comment).permit(:content, :team_id)
	end
end
