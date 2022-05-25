# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates_presence_of :email
  validates_uniqueness_of :email
  # require 'securerandom'
  # mount_uploader :avatar, AvatarUploader
  # has_many :events, dependent: :destroy
  # has_many :bookmarks, dependent: :destroy
  # has_many :bookmarked_events, through: :bookmarks, source: :event
  # has_secure_password
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, presence: true, uniqueness: true
  # validates :password_digest, presence: true
  # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  # validates :password_digest,
  #           length: { minimum: 8 },
  #           if: -> { new_record? || !password.nil? }
  # validates :password_digest,
  #           confirmation: true,
  #           if: -> { new_record? || !password.nil? }
  # validates :password_confirmation,
  #           presence: true,
  #           if: -> { new_record? || !password.nil? }
  # validates :phone, presence: true
  # validates :street1, presence: true
  # validates :street2, presence: true
  # validates :city, presence: true
  # validates :country, presence: true
  # validates :zipcode, presence: true
  # def full_name
  #   "#{first_name} #{last_name}"
  # end
end
