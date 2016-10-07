require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'client name must not be empty' do
    client = Client.new
    assert client.invalid?
    assert client.errors[:name].any?
  end

  test 'client name must be unique' do
    duplicate_client = Client.new(
      name: clients(:company_ace).name,
      address: 'somewhere they belong',
      phone: '312-894353',
      email: 'mail.support@acellent.com',
    )

    assert duplicate_client.invalid?
    assert duplicate_client.errors[:name].any?
  end
end
