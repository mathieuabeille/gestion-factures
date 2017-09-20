class InvoicesController < ApplicationController

  def index
    @invoices = current_user.invoices.all
  end

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new(invoice_params)
    @invoice.user = current_user
    if @invoice.save
      redirect_to invoice_path(@invoice)
    else
      render new
    end
  end

  def edit
    @invoice = Invoice.find(params[:id])
  end

  def update
    @invoice = Invoice.find(params[:id])
    @invoice.update(invoice_params)
    redirect_to invoice_path(@invoice)
  end

  def show
    @invoice = Invoice.find(params[:id])
    @review = Review.new
    # taux_amortisation
  end

  def destroy
    @invoice = Invoice.find(params[:id])
    @invoice.destroy
    redirect_to invoices_path
  end

  # def taux_amortisation(begina, enda)
  #     @time = enda.year - begina.year
  #     @rate = 1/@time
  # end

  private

  def invoice_params
    params.require(:invoice).permit(:entite, :specifique_id, :fournisseur, :nom, :marque, :description, :duree_garantie, :emplacement, :date_achat, :fin_amortissement, :numero_comptabilite, :processeur, :RAM, :memoire, :systeme_exploitation, :numero_OS, :photo)
  end


end






