class Client < CouchRest::ExtendedDocument

  #include CouchRest::Validation

  property :name
  property :telephone
  property :email

  #validates_present :name

end
