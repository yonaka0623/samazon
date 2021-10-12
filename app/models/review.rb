class Review < ApplicationRecord
    belong_to :product
    belong_to :user
    
    def save_review(review,review_params)
        review.content = review_params[:content]
        review.user_id = review_params[:user_id]
        review.product_id = review_params[:product_id]
        save
    end
end
