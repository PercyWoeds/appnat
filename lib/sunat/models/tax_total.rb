module SUNAT

  class TaxTotal
    include Model

    property :tax_amount, PaymentAmount
    property :sub_totals, [TaxSubTotal]
  end

end