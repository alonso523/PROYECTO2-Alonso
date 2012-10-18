class UserSession < Authlogic::Session::Base  

# Segmento de código que utiliza las características especiales de ruby, que parecen mágicas.
  def to_key
     new_record? ? nil : [ self.send(self.class.primary_key) ]
  end
  
  def persisted?
    false
  end
end
