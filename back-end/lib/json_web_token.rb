class JsonWebToken
  SECRET_KEY = Rails.application.secrets.secret_key_base.to_s

  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, SECRET_KEY)
  end

  def self.decode(token)
    decoded = JWT.decode(token, SECRET_KEY).first
    HashWithIndifferentAccess.new decoded
  end
end

# t.boolean "admin", default: false
# t.string "first_name"
# t.string "last_name"
# t.string "phone"
# t.string "email"
# t.string "street1"
# t.string "street2"
# t.integer "zipcode"
# t.string "country"
# t.string "image"
# t.string "password_digest"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false