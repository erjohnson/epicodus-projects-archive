class Contact

  attr_accessor :name, :phone_number, :email, :address

  def initialize name, phone_num
    @name = name
    @phone_number = phone_num
  end
  def edit_email input_email
    @email = input_email
  end
  def edit_address input_address
    @address = input_address
  end
end
