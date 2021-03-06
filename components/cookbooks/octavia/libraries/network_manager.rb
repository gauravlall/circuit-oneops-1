require File.expand_path('../../libraries/data_access/network/subnet_dao', __FILE__)
require File.expand_path('../../libraries/data_access/network/network_dao', __FILE__)


class NetworkManager

  def initialize(tenant)
    fail ArgumentError, 'tenant is nil' if tenant.nil?

    @subnet_dao = SubnetDao.new(tenant)

    @network_dao = NetworkDao.new(tenant)
  end

  def get_subnet_id(subnet_name)
    subnet_id = @subnet_dao.get_subnet_id(subnet_name)

    return subnet_id
  end

  def get_ip_availability_network(network_id)
    no_of_ips_available = @network_dao.get_ip_availability_network(network_id)
    return no_of_ips_available

  end

  def get_network_id(network_name)
    id = @network_dao.get_network_id(network_name)
    return id
  end
end
