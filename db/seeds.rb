# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Specialty.destroy_all

Specialty.create!([
  {
    id: 1,
    specialty_name: 'Oftamologia'
  }
])

User.destroy_all
User.create!([
  {
    id: 1,
    email: 'admin@admin.com',
    password: 'admin@123',
    password_confirmation: 'admin@123'
  }
])

Profile.destroy_all
Profile.create!([
  {
    id: 1,
    user_id: 1,
    profile_type: 'Almight'
  }
])

Permission.destroy_all
Permission.create!([
  {
    id: 1,
    action_type: :view,
    resource_name: 'home'
  },
  {
    id: 2,
    action_type: :view,
    resource_name: 'senhas'
  },
  {
    id: 3,
    action_type: :view,
    resource_name: 'prontuario'
  },
  {
    id: 4,
    action_type: :view,
    resource_name: 'prontuario'
  },
  {
    id: 5,
    action_type: :view,
    resource_name: 'documentos'
  },
  {
    id: 6,
    action_type: :view,
    resource_name: 'evolucao'
  },
  {
    id: 7,
    action_type: :view,
    resource_name: 'consultas'
  },
  {
    id: 8,
    action_type: :view,
    resource_name: 'exames'
  },
  {
    id: 9,
    action_type: :view,
    resource_name: 'cirurgias'
  },
  {
    id: 10,
    action_type: :view,
    resource_name: 'cadastro-paciente',
  },
  {
    id: 11,
    action_type: :view,
    resource_name: 'cadastro-medico',
  },
  {
    id: 12,
    action_type: :view,
    resource_name: 'cadastro-tipo-cirurgia',
  },
  {
    id: 13,
    action_type: :view,
    resource_name: 'cadastro-especialidade',
  },
  {
    id: 14,
    action_type: :view,
    resource_name: 'cadastro-tipo-atendimento',
  },
  {
    id: 15,
    action_type: :view,
    resource_name: 'cadastro-tipo-exame'
  },
  {
    id: 16,
    action_type: :view,
    resource_name: 'cadastro-especialidade',
  },
  {
    id: 17,
    action_type: :view,
    resource_name: 'cadastro-tipo-cirurgia',
  },
  {
    id: 18,
    action_type: :view,
    resource_name: 'cadastro-tipo-atendimento',
  },
  {
    id: 19,
    action_type: :view,
    resource_name: 'cadastro-tipo-exame',
  },
  {
    id: 20,
    action_type: :view,
    resource_name: 'perfis-acesso'
  }
])

Role.destroy_all
Role.create!([
  {
    role_name: 'Almight',
    role_permissions_attributes: [
      { permission_id: 1 }, { permission_id: 2 }, { permission_id: 3 }, { permission_id: 4 }, { permission_id: 5 },
      { permission_id: 6 }, { permission_id: 7 }, { permission_id: 8 }, { permission_id: 9 }, { permission_id: 9 },
      { permission_id: 10 }, { permission_id: 11 }, { permission_id: 12 }, { permission_id: 13 }, { permission_id: 14 },
      { permission_id: 15 }, { permission_id: 16 }, { permission_id: 17 }, { permission_id: 18 }, { permission_id: 19 }, { permission_id: 20 }
    ]
  }
])
