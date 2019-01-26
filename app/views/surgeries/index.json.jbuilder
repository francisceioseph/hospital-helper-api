# frozen_string_literal: true

json.array! @surgeries, partial: 'surgeries/surgery', as: :surgery
