class CreateUserPhone
  def initialize(params)
    @params = params
  end

  def call
    phone = Phone.new(user: @params[:user], number: number_to_integer(@params[:number]))
    if phone.valid?
      phone.is_custom = true
    else
      phone.number = generate_number
    end
    phone.save
    phone
  end

  private

  def generate_number
    new_number = Phone.not_custom.last.try(:number) || (Phone::FIRST_NUMBER - 1)
    begin
      new_number = new_number + 1
    end while Phone.exists?(number: new_number)
    new_number
  end

  def number_to_integer(number)
    number.tr('^0-9', '').to_i
  end
end
