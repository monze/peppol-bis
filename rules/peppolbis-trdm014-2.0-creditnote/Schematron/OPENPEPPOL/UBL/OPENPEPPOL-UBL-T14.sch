<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T14 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T14" id="UBL-T14">
  <param name="OP-T14-R039" value="((cbc:PaymentMeansCode = '31') and (cac:PayeeFinancialAccount/cbc:ID)) or (cbc:PaymentMeansCode != '31')"/>
  <param name="OP-T14-R041" value="(cbc:PaymentMeansCode)"/>
  <param name="EUGEN-T14-R004" value="((cbc:PaymentMeansCode = '31') and (cac:PayeeFinancialAccount/cbc:ID/@schemeID and cac:PayeeFinancialAccount/cbc:ID/@schemeID = 'IBAN') and (cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cac:FinancialInstitution/cbc:ID/@schemeID and cac:PayeeFinancialAccount/cac:FinancialInstitutionBranch/cac:FinancialInstitution/cbc:ID/@schemeID = 'BIC')) or (cbc:PaymentMeansCode != '31') or ((cbc:PaymentMeansCode = '31') and  (not(cac:PayeeFinancialAccount/cbc:ID/@schemeID) or (cac:PayeeFinancialAccount/cbc:ID/@schemeID != 'IBAN')))"/>
  <param name="EUGEN-T14-R008" value="(parent::cac:AllowanceCharge) or (cbc:ID and cbc:Percent) or (cbc:ID = 'AE')"/>
  <param name="EUGEN-T14-R012" value="not(cbc:MultiplierFactorNumeric) or number(cbc:MultiplierFactorNumeric) &gt;=0"/>
  <param name="EUGEN-T14-R022" value="number(cbc:Amount)&gt;=0"/>
  <param name="EUGEN-T14-R023" value="@schemeID"/>
  <param name="EUGEN-T14-R024" value="@schemeID"/>
  <param name="EUGEN-T14-R026" value="@listID =  'ISO4217'"/>
  <param name="EUGEN-T14-R027" value="@listID = 'ISO3166-1:Alpha2'"/>
  <param name="EUGEN-T14-R029" value="@listID = 'UNCL4465'"/>
  <param name="EUGEN-T14-R030" value="not(attribute::unitCode) or (attribute::unitCode and attribute::unitCodeListID = 'UNECERec20')"/>
  <param name="EUGEN-T14-R031" value="@schemeID"/>
  <param name="EUGEN-T14-R032" value="@schemeID = 'UNCL5305'"/>
  <param name="EUGEN-T14-R033" value="@listID = 'UNCL1001'"/>
  <param name="EUGEN-T14-R034" value="@schemeID"/>
  <param name="EUGEN-T14-R035" value="(cac:Party/cac:PartyName/cbc:Name)"/>
  <param name="EUGEN-T14-R036" value="(cac:Party/cac:PartyName/cbc:Name)"/>
  <param name="EUGEN-T14-R037" value="(cac:Party/cac:PostalAddress)"/>
  <param name="EUGEN-T14-R038" value="(cac:Party/cac:PostalAddress)"/>
  <param name="EUGEN-T14-R039" value="(cac:Party/cac:PartyLegalEntity)"/>
  <param name="EUGEN-T14-R040" value="(cac:Party/cac:PartyLegalEntity)"/>
  <param name="EUGEN-T14-R041" value="not(/ubl:CreditNote/cac:TaxTotal/*/*/*/cbc:ID = 'VAT') or (some $companyID in cac:Party/cac:PartyTaxScheme/cbc:CompanyID satisfies (starts-with($companyID,cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)))"/>
  <param name="EUGEN-T14-R042" value="((cbc:TaxableAmount) and (cac:TaxCategory/cbc:Percent) and (xs:decimal(cbc:TaxAmount - 1) &lt; xs:decimal(cbc:TaxableAmount * (xs:decimal(cac:TaxCategory/cbc:Percent) div 100))) and (xs:decimal(cbc:TaxAmount + 1) &gt; xs:decimal(cbc:TaxableAmount * (xs:decimal(cac:TaxCategory/cbc:Percent) div 100)))) or not(cac:TaxCategory/cbc:Percent) or not(cbc:TaxableAmount)"/>
  <param name="EUGEN-T14-R043" value="(xs:decimal(child::cbc:TaxAmount)= round(number(xs:decimal(sum(cac:TaxSubtotal/cbc:TaxAmount)) * 10 * 10)) div 100) "/>
  <param name="EUGEN-T14-R044" value="not(//cbc:TaxCurrencyCode) or (//cac:TaxExchangeRate)"/>
  <param name="EUGEN-T14-R045" value="(cbc:CalculationRate) and (cbc:MathematicOperatorCode)"/>
  <param name="EUGEN-T14-R046" value="not(/ubl:CreditNote/cbc:TaxCurrencyCode) or (cbc:TaxAmount and cbc:TransactionCurrencyTaxAmount)"/>
  <param name="EUGEN-T14-R047" value="((cac:InvoiceDocumentReference) and not(cac:CreditNoteDocumentReference)) or (not(cac:InvoiceDocumentReference) and (cac:CreditNoteDocumentReference))"/>
  <param name="EUGEN-T14-R048" value="not(count(//*[not(node()[not(self::comment())])]) &gt; 0)"/>
  <param name="EUGEN-T14-R049" value="string-length(substring-after(., '.')) &lt;= 2"/>
  <param name="EUGEN-T14-R050" value="string-length(substring-after(cbc:TaxAmount, '.')) &lt;= 2"/>
  <param name="EUGEN-T14-R051" value="string-length(substring-after(cbc:TaxableAmount, '.')) &lt;= 2"/>
  <param name="EUGEN-T14-R052" value="string-length(substring-after(cbc:TaxAmount, '.')) &lt;= 2"/>
  <param name="EUGEN-T14-R053" value="string-length(substring-after(cbc:Amount, '.')) &lt;= 2"/>
  <param name="EUGEN-T14-R054" value="@schemeID"/>
  <param name="EUGEN-T14-R055" value="cac:Item/cbc:Name"/>
  <param name="Credit_Note" value="/ubl:CreditNote"/>
  <param name="Total_Credit_Note" value="//cac:LegalMonetaryTotal"/>
  <param name="Total_Amount" value="//cac:LegalMonetaryTotal/child::*"/>
  <param name="Unit_Code" value="//*[contains(name(),'Quantity')]"/>
  <param name="Tax_Category_Identifier" value="//cac:TaxCategory/cbc:ID"/>
  <param name="Tax_Category" value="//cac:TaxCategory"/>
  <param name="Party_Legal_Entity" value="//cac:PartyLegalEntity/cbc:CompanyID"/>
  <param name="Party_Identifier" value="//cac:PartyIdentification/cbc:ID"/>
  <param name="Endpoint" value="//cbc:EndpointID"/>
  <param name="Document_Type_Code" value="//cbc:DocumentTypeCode"/>
  <param name="Currency_Code" value="//*[contains(name(),'CurrencyCode')]"/>
  <param name="Country_Identification_Code" value="//cac:Country/cbc:IdentificationCode"/>
  <param name="Allowance_Charge_Reason_Code" value="//cbc:AllowanceChargeReasonCode"/>
  <param name="Supplier" value="//cac:AccountingSupplierParty"/>
  <param name="Customer" value="//cac:AccountingCustomerParty"/>
  <param name="Tax_Total" value="/ubl:CreditNote/cac:TaxTotal"/>
  <param name="Tax_Subtotal" value="/ubl:CreditNote/cac:TaxTotal/cac:TaxSubtotal"/>
  <param name="Tax_Exchange" value="//cac:TaxExchangeRate"/>
  <param name="Allowance_Charge" value="/ubl:CreditNote/cac:AllowanceCharge"/>
  <param name="Delivery_Location_Identifier" value="//cac:DeliveryLocation/cbc:ID"/>
  <param name="Financial_Account_Identifier" value="//cac:PayeeFinancialAccount/cbc:ID"/>
  <param name="Payment_Means" value="//cac:PaymentMeans"/>
  <param name="Billing_Reference" value="//cac:BillingReference"/>
  <param name="CreditNote_Line" value="//cac:CreditNoteLine"/>
</pattern>
