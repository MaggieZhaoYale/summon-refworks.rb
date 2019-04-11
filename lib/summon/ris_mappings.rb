#These are the mappings from which
#refworks will draw its tags. On the left is the refworks tag
#on the right an expression which will yield that value given
#a summon document.

#This is an exhaustive list of refworks fields according to:
#http://www.refworks.com/rwathens/help/RefWorks_Tagged_Format.htm
#so some mappings are inevitably going to be blank.

{
  TY: ->() { content_type_to_reference_type }, #Reference Type
  AU: ->() { authors.map(&:name) + corporate_authors.map(&:name) }, #Primary Authors
  A2: blank, #Secondary Authors
  A3: blank, #Tertiary Authors
  A4: blank, #Quaternary Authors
  AB: ->() { abstract }, #Abstract
  AD: blank, #Author Address
  AN: blank, #Accession Number
  CN: blank, #Call Number
  CY: ->() { publication_place }, #Place of Publication
  DB: ->() { database_name }, #database name
  DO: ->() { doi }, #Digital Object Identifier
  DP: blank, #Database Provider
  ET: blank, #Edition
  J2: blanck, #alternate title
  KW: ->() { subject_terms.tag_per_value }, #keywork
  PY: ->() { publication_date.year.to_s }, #Publication Year
  DA: blank, #Publication Data, YYYY/MM/DD other info
  SR: blank, #Source Type (field is either Print(0) or  Electronic(1) )
  ID: blank, #Reference Identifier
  A1: ->() { authors.map(&:name) + corporate_authors.map(&:name) }, #Primary Authors
  T1: ->() { subtitle ? "#{title}: #{subtitle}" : title},   #Primary Title
  JF: ->() { publication_title }, #Periodical Full
  JO: blank, #Periodical Abbrev
  YR: ->() { publication_date.year.to_s }, #Publication Year
  FD: blank, #Publication Data, Free Form
  VO: ->() { volume }, #Volume
  IS: ->() { issue }, #Issue
  SP: ->() { start_page }, #Start Page
  OP: ->() { end_page }, #Other Pages
  K1: ->() { subject_terms.tag_per_value }, #Keyword
  AB: ->() { abstract }, #Abstract
  NO: ->() { isi_cited_references_count ? uri : url }, #Notes
  A2: blank, #Secondary Authors
  T2: blank, #Secondary Title
  ED: blank, #Edition
  PB: ->() { publisher }, #Publisher
  PP: ->() { publication_place }, #Place of Publication
  A3: blank, #Tertiary Authors
  A4: blank, #Quaternary Authors
  A5: blank, #Quinary Authors
  T3: blank, #Tertiary Title
  SN: ->() { issns.empty? ? isbns : issns }, #ISSN/ISBN
  AV: blank, #Availability
  AD: blank, #Author Address
  AN: blank, #Accession Number
  LA: ->() { languages }, #Language
  CL: blank, #Classification
  SF: blank, #Subfile/Database
  OT: blank, #Original Foreign Title
  LK: blank, #Links
  DO: ->() { doi }, #Digital Object Identifier
  CN: blank, #Call Number
  DB: blank, #Database
  DS: blank, #Data Source
  IP: blank, #Identifying Phrase
  RD: blank, #Retrieved Date
  ST: blank, #Shortened Title
  C1: ->() { link }, #URL custom 1
  ER: blank
}
