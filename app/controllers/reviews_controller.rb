class ReviewsController < ApplicationController
    def new
        @review = Review.new
    end

    def create
        @publication = Publication.new
        @review = Publication.new
    end

    def reviews_params
        params.require(:review).permit(:publication_id, :review)
    end
end
