class RepliesController < ApplicationController

  before_filter :authenticate_user!

  # POST /replies
  # POST /replies.json
  def reply_to_post
    puts params[:reply]
    @post = Post.find(params[:reply][:post_id])
    @reply = @post.replies.build(params[:reply])
    @reply.user_id = current_user.id

    respond_to do |format|
      if @reply.save
        format.html { redirect_to(board_post_path(@post.board, @post), notice => 'Post was successfully created.') }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

end
