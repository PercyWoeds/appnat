DailyReceiptSummary.new.tap do |s|
  s.reference_date  = Date.strptime("2012-06-23", "%Y-%m-%d")
  s.notes           = ["nota 1", "nota 2", "nota3"]
  
  s.ruc = "20100113612"
  s.legal_name = "K&G Laboratorios"
  
  s.add_line do |line|
    line.serial_id = "BA98"
    line.start_id = "456"
    line.end_id = "764"
    
    line.add_billing_payment 9823200, "PEN"
    line.add_billing_payment 0, "PEN"
    line.add_billing_payment 23200, "PEN"
    
    line.add_allowance_charge 500, "PEN"
    line.add_allowance_discount 0, "PEN"
    
    line.add_tax_total :isc, 0, "PEN"
    line.add_tax_total :igv, 1768100, "PEN"
  end
end