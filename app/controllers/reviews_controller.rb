class ReviewsController < ApplicationController

    def new
        @publication = Publication.find(params[:publication_id])
        @review = @publication.reviews.build()
    end

    def create
        @publication = Publication.find(params[:publication_id])
        @review = @publication.reviews.build(reviews_params)
        if @review.save
            redirect_to root_path
        end
    end

    def reviews_params
        params.require(:review).permit(:publication_id, :review)
    end
    
end
