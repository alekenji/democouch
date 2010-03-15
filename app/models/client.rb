class Client < CouchRest::ExtendedDocument

  #include CouchRest::Validation

  use_database COUCH_DB
  
  property :name
  property :telephone
  property :email

  #validates_present :name

  timestamps!
  
  view_by :name
  view_by :created_at

  def errors
    _errors = '' 
    def _errors.count
      self.size
    end
    _errors
  end

end
