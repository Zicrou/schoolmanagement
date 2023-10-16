json.extract! student, :id, :nom, :prenom, :created_at, :updated_at
json.url student_url(student, format: :json)
