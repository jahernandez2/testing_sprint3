class ReviewsController < ApplicationController
    include ReviewsHelper
    def new
        @publication = Publication.find(params[:publication_id])
        @review = @publication.reviews.build()
    end

    def create
        
        
        # Encontramos usuario en publicacion?
        if Review.find_by(user_id: current_user.id).present?
            # Actualizamos el review
            hello_world(params[:review][:review].to_i)
            redirect_to root_path
        else
            @publication = Publication.find(params[:publication_id])
            @review = @publication.reviews.build(reviews_params)
            @review.user_id = current_user.id
            if @review.save
                redirect_to root_path
            end
        end
        # No encontramos?, cremos nueva review

    end

    def reviews_params
        params.require(:review).permit(:publication_id, :review)
    end
    
end
