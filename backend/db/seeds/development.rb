# frozen_string_literal: true

if Doorkeeper::Application.count.zero?
  Doorkeeper::Application.create!(name: 'React Client', redirect_uri: '', scopes: '')
end

User.first_or_create(email: 'admin@admin.com',
                     password: '12341234',
                     password_confirmation: '12341234',
                     role: User.roles[:admin])
