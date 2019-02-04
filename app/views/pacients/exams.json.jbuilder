json.id @pacient.id

json.personal_datum do
  json.partial! "personal_data/personal_datum", 
    personal_datum: @pacient.personal_datum
end

json.exams do
  json.array! @pacient.exams, partial: 'exams/exam', as: :exam
end