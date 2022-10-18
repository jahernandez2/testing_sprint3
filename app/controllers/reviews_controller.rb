class ReviewsController < ApplicationController
    def new
        @hello = params[:anchor]
        @review = Review.new
        session[:publication_id] = params[:publication_id]
    end

    def create
        @review = Review.new(reviews_params)
        @review.publication_id = session[:publication_id]
        if @review.save
          redirect_to root_path
        else
          render :new
        end
        session[:publication_id] = nil
    end

    def reviews_params
        params.require(:review).permit(:publication_id, :review)
    end
end
