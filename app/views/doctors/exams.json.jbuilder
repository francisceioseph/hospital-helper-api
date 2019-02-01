json.id @doctor.id

json.specialties @doctor.specialties do |specialty|
  json.partial! "specialties/specialty", specialty: specialty
end

json.personal_datum do
  json.partial! "personal_data/personal_datum", 
    personal_datum: @doctor.personal_datum
end

json.exams do
  json.array! @doctor.exams, partial: 'exams/exam', as: :exam
end