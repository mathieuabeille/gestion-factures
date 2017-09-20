json.extract! contrat, :id, :nom, :prenom, :adresse, :created_at, :updated_at
json.url contrat_url(contrat, format: :json)
