# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtBlacklist

  has_one :profile, dependent: :destroy

  belongs_to :role, required: false
  has_and_belongs_to_many :conversations, dependent: :destroy

  accepts_nested_attributes_for :profile, allow_destroy: true
  acts_as_paranoid
  has_paper_trail
end
