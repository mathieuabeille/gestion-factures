# class InvoicesAmortisation
#   attr_reader :params

#   def initialize(params)
#     @params = params
#     @invoice = Invoice.find(params)
#   end

#   def amortisation
#     taux_amortisation
#     @invoice
#   end

#   def taux_amortisation
#     if params[:begin].present? && params[:end].present?
#       @time = @invoice.end.year - @invoice.end.year
#       @rate = 1/@time
#     else
#       false
#     end
#   end


# end

# Taux d’amortissement linéaire = 1 / durée d’amortissement (en années)


# Date de début Date de fin Calcul de l’amortissement Montant de l’amortissement
# 23/07/N 31/12/N 10 000 x (158/360) x 20%   877,78 €
# 01/01/N+1 31/12/N+1 10 000 x 20%  2 000,00 €
# 01/01/N+2 31/12/N+2 10 000 x 20%   2 000,00 €
# 01/01/N+3 31/12/N+3 10 000 x 20%  2 000,00 €
# 01/01/N+4 31/12/N+4 10 000 x 20%  2 000,00 €
# 01/01/N+5 22/07/N+5 10 000 x (202/360) x 20%   1 122,22 €
# Total  10 000,00 €
