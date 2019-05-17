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

ActiveRecord::Schema.define(version: 2019_05_15_171010) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "street_name"
    t.string "house_number"
    t.string "zipcode"
    t.string "neighborhood"
    t.string "city"
    t.string "state"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_addresses_on_deleted_at"
    t.index ["profile_id"], name: "index_addresses_on_profile_id"
  end

  create_table "appointment_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "appointment_type_name"
    t.string "appointment_type_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_appointment_types_on_deleted_at"
  end

  create_table "appointments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.timestamp "scheduled_to"
    t.timestamp "intended_end_time"
    t.timestamp "real_end_time"
    t.boolean "finished"
    t.boolean "canceled"
    t.bigint "doctor_id"
    t.bigint "pacient_id"
    t.bigint "prontuario_id"
    t.bigint "appointment_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.string "receipt"
    t.index ["appointment_type_id"], name: "index_appointments_on_appointment_type_id"
    t.index ["deleted_at"], name: "index_appointments_on_deleted_at"
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["pacient_id"], name: "index_appointments_on_pacient_id"
    t.index ["prontuario_id"], name: "index_appointments_on_prontuario_id"
  end

  create_table "birth_data", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "date_of_birth"
    t.string "country_of_birth"
    t.string "state_of_birth"
    t.string "city_of_birth"
    t.bigint "personal_datum_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_birth_data_on_deleted_at"
    t.index ["personal_datum_id"], name: "index_birth_data_on_personal_datum_id"
  end

  create_table "conversations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_conversations_on_deleted_at"
  end

  create_table "conversations_users", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "conversation_id", null: false
    t.index ["conversation_id", "user_id"], name: "index_conversations_users_on_conversation_id_and_user_id"
    t.index ["user_id", "conversation_id"], name: "index_conversations_users_on_user_id_and_conversation_id"
  end

  create_table "demographics", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "job_title"
    t.string "job_category"
    t.string "is_estudying"
    t.string "degree"
    t.string "sexual_orientation"
    t.string "gender_identity"
    t.string "has_special_needs"
    t.string "special_needs"
    t.bigint "pacient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_demographics_on_deleted_at"
    t.index ["pacient_id"], name: "index_demographics_on_pacient_id"
  end

  create_table "doctor_specialties", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "doctor_id"
    t.bigint "specialty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_doctor_specialties_on_deleted_at"
    t.index ["doctor_id"], name: "index_doctor_specialties_on_doctor_id"
    t.index ["specialty_id"], name: "index_doctor_specialties_on_specialty_id"
  end

  create_table "emails", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "address"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_emails_on_deleted_at"
    t.index ["profile_id"], name: "index_emails_on_profile_id"
  end

  create_table "exam_appointments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.timestamp "scheduled_to"
    t.boolean "finished"
    t.boolean "canceled"
    t.bigint "exam_type_id"
    t.bigint "prontuario_id"
    t.bigint "doctor_id"
    t.bigint "pacient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.string "receipt"
    t.index ["deleted_at"], name: "index_exam_appointments_on_deleted_at"
    t.index ["doctor_id"], name: "index_exam_appointments_on_doctor_id"
    t.index ["exam_type_id"], name: "index_exam_appointments_on_exam_type_id"
    t.index ["pacient_id"], name: "index_exam_appointments_on_pacient_id"
    t.index ["prontuario_id"], name: "index_exam_appointments_on_prontuario_id"
  end

  create_table "exam_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "exam_type_name"
    t.string "exam_type_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_exam_types_on_deleted_at"
  end

  create_table "family_data", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "mother_name"
    t.string "father_name"
    t.boolean "is_family_head"
    t.bigint "pacient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_family_data_on_deleted_at"
    t.index ["pacient_id"], name: "index_family_data_on_pacient_id"
  end

  create_table "immigration_data", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "nationalization_date"
    t.string "oridinance_date"
    t.bigint "personal_datum_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_immigration_data_on_deleted_at"
    t.index ["personal_datum_id"], name: "index_immigration_data_on_personal_datum_id"
  end

  create_table "jwt_blacklist", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.index ["jti"], name: "index_jwt_blacklist_on_jti"
  end

  create_table "medications", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "medication_name"
    t.bigint "prescription_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_medications_on_deleted_at"
    t.index ["prescription_item_id"], name: "index_medications_on_prescription_item_id"
  end

  create_table "messages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "conversation_id"
    t.bigint "user_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "attachments"
    t.datetime "deleted_at"
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["deleted_at"], name: "index_messages_on_deleted_at"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "next_of_kins", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "full_name"
    t.string "cpf"
    t.bigint "pacient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_next_of_kins_on_deleted_at"
    t.index ["pacient_id"], name: "index_next_of_kins_on_pacient_id"
  end

  create_table "permissions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "resource_name"
    t.string "action_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_permissions_on_deleted_at"
  end

  create_table "personal_data", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "full_name"
    t.string "social_name"
    t.string "rg"
    t.string "cpf"
    t.string "nis"
    t.string "nationality"
    t.string "skin_color"
    t.string "gender"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "crm"
    t.string "cns"
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_personal_data_on_deleted_at"
    t.index ["profile_id"], name: "index_personal_data_on_profile_id"
  end

  create_table "prescription_items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "prescription_id"
    t.integer "amount"
    t.string "unit"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_prescription_items_on_deleted_at"
    t.index ["prescription_id"], name: "index_prescription_items_on_prescription_id"
  end

  create_table "prescriptions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "appointment_id"
    t.bigint "doctor_id"
    t.bigint "pacient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["appointment_id"], name: "index_prescriptions_on_appointment_id"
    t.index ["deleted_at"], name: "index_prescriptions_on_deleted_at"
    t.index ["doctor_id"], name: "index_prescriptions_on_doctor_id"
    t.index ["pacient_id"], name: "index_prescriptions_on_pacient_id"
  end

  create_table "profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "profile_type"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_profiles_on_deleted_at"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "prontuarios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "pacient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_prontuarios_on_deleted_at"
    t.index ["pacient_id"], name: "index_prontuarios_on_pacient_id"
  end

  create_table "regulators", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "role_permissions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "role_id"
    t.bigint "permission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_role_permissions_on_deleted_at"
    t.index ["permission_id"], name: "index_role_permissions_on_permission_id"
    t.index ["role_id"], name: "index_role_permissions_on_role_id"
  end

  create_table "roles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "role_name"
    t.string "role_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role_type"
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_roles_on_deleted_at"
  end

  create_table "specialties", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "specialty_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_specialties_on_deleted_at"
  end

  create_table "surgery_appointments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "prontuario_id"
    t.bigint "doctor_id"
    t.bigint "pacient_id"
    t.timestamp "scheduled_to"
    t.timestamp "real_end_time"
    t.boolean "finished"
    t.boolean "canceled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "surgery_type_id"
    t.datetime "deleted_at"
    t.string "receipt"
    t.index ["deleted_at"], name: "index_surgery_appointments_on_deleted_at"
    t.index ["doctor_id"], name: "index_surgery_appointments_on_doctor_id"
    t.index ["pacient_id"], name: "index_surgery_appointments_on_pacient_id"
    t.index ["prontuario_id"], name: "index_surgery_appointments_on_prontuario_id"
    t.index ["surgery_type_id"], name: "index_surgery_appointments_on_surgery_type_id"
  end

  create_table "surgery_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "surgery_type_name"
    t.string "surgery_type_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_surgery_types_on_deleted_at"
  end

  create_table "telephones", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "number"
    t.string "contact_person"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_telephones_on_deleted_at"
    t.index ["profile_id"], name: "index_telephones_on_profile_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "role_id"
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_users_on_deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "versions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "item_type", limit: 191, null: false
    t.bigint "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 4294967295
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  add_foreign_key "surgery_appointments", "surgery_types"
  add_foreign_key "users", "roles"
end
