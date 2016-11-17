class API::V1::PostsController < ApplicationController
  def index
    posts = Post.all

    respond_to do |format|
      format.json {  render json: posts}
      format.xml {  render xml: posts}
    end
  end

  def show
    post = Post.find_by(id: params[:id])

    return not_found if post.nil?

    respond_to do |format|
      format.json {  render json: post}
      format.xml {  render xml: post}
    end
  end

  private
  def not_found
    respond_to do |format|
      format.json {  render json: {  error: "not found"}, status: 404}
      format.xml {  render xml: { error: "not found" }, status: :not_found}
    end
  end
end
