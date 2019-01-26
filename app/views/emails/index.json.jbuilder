# frozen_string_literal: true

json.array! @emails, partial: 'emails/email', as: :email
