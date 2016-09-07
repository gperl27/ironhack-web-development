class Contact < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, format: { with: /\w+@\w+.\w{2,3}/, 
                                              message: "must be valid email" }
  validates :phone_number, format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/,
                                      message: 'must be a valid phone number' }

end
