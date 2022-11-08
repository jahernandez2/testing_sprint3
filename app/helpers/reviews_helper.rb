module ReviewsHelper
    def hello_world(new_data)
        Review.find_by(user_id: current_user).update(review: new_data)
    end
end
