class ReviewsController < ApplicationController


  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.invoice = Invoice.find(params[:invoice_id])
    if @review.save
     redirect_to invoice_path(@review.invoice)
    else
      render :new
    end
  end

  def edit
    # we need @restaurant in our `simple_form_for`
    @invoice = Invoice.find(params[:id])
    @review = Review.find(params[:invoice_id])


  end

  def update
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review = Review.find(params[:id])
    @review.invoice = Invoice.find(params[:invoice_id])
    @review.update(review_params)
    redirect_to invoice_path(@review.invoice)
  end


  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to invoices_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :auteur)
  end


end
