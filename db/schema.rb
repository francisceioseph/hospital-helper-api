# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_20_173715) do

  create_table "addresses", force: :cascade do |t|
    t.string "street_name"
    t.string "house_number"
    t.string "zipcode"
    t.string "neighborhood"
    t.string "city"
    t.string "state"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_addresses_on_profile_id"
  end

  create_table "appointment_types", force: :cascade do |t|
    t.string "appointment_type_name"
    t.integer "appointment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_appointment_types_on_appointment_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.datetime "scheduled_to"
    t.datetime "intended_end_time"
    t.datetime "real_end_time"
    t.boolean "finished"
    t.boolean "canceled"
    t.integer "doctor_id"
    t.integer "pacient_id"
    t.integer "prontuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["pacient_id"], name: "index_appointments_on_pacient_id"
    t.index ["prontuario_id"], name: "index_appointments_on_prontuario_id"
  end

  create_table "birth_data", force: :cascade do |t|
    t.date "date_of_birth"
    t.string "country_of_birth"
    t.string "state_of_birth"
    t.string "city_of_birth"
    t.integer "personal_datum_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_datum_id"], name: "index_birth_data_on_personal_datum_id"
  end

  create_table "emails", force: :cascade do |t|
    t.string "address"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_emails_on_profile_id"
  end

  create_table "exam_appointments", force: :cascade do |t|
    t.datetime "scheduled_to"
    t.boolean "finished"
    t.boolean "canceled"
    t.integer "prontuario_id"
    t.integer "doctor_id"
    t.integer "pacient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_exam_appointments_on_doctor_id"
    t.index ["pacient_id"], name: "index_exam_appointments_on_pacient_id"
    t.index ["prontuario_id"], name: "index_exam_appointments_on_prontuario_id"
  end

  create_table "exam_types", force: :cascade do |t|
    t.string "exam_name"
    t.string "exam_description"
    t.integer "exam_appointments_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_appointments_id"], name: "index_exam_types_on_exam_appointments_id"
  end

  create_table "family_data", force: :cascade do |t|
    t.string "mother_name"
    t.string "father_name"
    t.boolean "is_family_head"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_family_data_on_profile_id"
  end

  create_table "immigration_data", force: :cascade do |t|
    t.date "nationalization_date"
    t.date "oridinance_date"
    t.integer "personal_datum_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_datum_id"], name: "index_immigration_data_on_personal_datum_id"
  end

  create_table "jwt_blacklist", force: :cascade do |t|
    t.string "jti", null: false
    t.index ["jti"], name: "index_jwt_blacklist_on_jti"
  end

  create_table "medications", force: :cascade do |t|
    t.string "medication_name"
    t.integer "prescription_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prescription_item_id"], name: "index_medications_on_prescription_item_id"
  end

  create_table "personal_data", force: :cascade do |t|
    t.string "full_name"
    t.string "social_name"
    t.string "rg"
    t.string "cpf"
    t.string "nis"
    t.string "nationality"
    t.string "skin_color"
    t.string "gender"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_personal_data_on_profile_id"
  end

  create_table "prescription_items", force: :cascade do |t|
    t.integer "prescription_id"
    t.integer "amount"
    t.string "unit"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prescription_id"], name: "index_prescription_items_on_prescription_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.integer "appointment_id"
    t.integer "doctor_id"
    t.integer "pacient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_prescriptions_on_appointment_id"
    t.index ["doctor_id"], name: "index_prescriptions_on_doctor_id"
    t.index ["pacient_id"], name: "index_prescriptions_on_pacient_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "profile_type"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "prontuarios", force: :cascade do |t|
    t.integer "pacient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pacient_id"], name: "index_prontuarios_on_pacient_id"
  end

  create_table "speciaties", force: :cascade do |t|
    t.string "specialty_name"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_speciaties_on_profile_id"
  end

  create_table "surgery_appointments", force: :cascade do |t|
    t.integer "prontuario_id"
    t.integer "doctor_id"
    t.integer "pacient_id"
    t.datetime "scheduled_to"
    t.datetime "real_end_time"
    t.boolean "finished"
    t.boolean "canceled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_surgery_appointments_on_doctor_id"
    t.index ["pacient_id"], name: "index_surgery_appointments_on_pacient_id"
    t.index ["prontuario_id"], name: "index_surgery_appointments_on_prontuario_id"
  end

  create_table "surgery_types", force: :cascade do |t|
    t.string "surgery_type_name"
    t.integer "surgery_appointment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["surgery_appointment_id"], name: "index_surgery_types_on_surgery_appointment_id"
  end

  create_table "telephones", force: :cascade do |t|
    t.string "number"
    t.string "contact_person"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_telephones_on_profile_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
