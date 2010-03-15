class Client < CouchRest::ExtendedDocument

  #include CouchRest::Validation

  use_database COUCH_DB
  
  property :name
  property :telephone
  property :email

  #validates_present :name

  timestamps!
  
  BY_ALL = <<MAP
    function(doc){
      if (doc['couchrest-type'] == 'Client') {
         emit(doc.name, null);
      }
    }
MAP

  view_by :all, :map => BY_ALL
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
