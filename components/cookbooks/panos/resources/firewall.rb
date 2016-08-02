
actions :add, :update, :delete
default_action :add

attribute :url_endpoint, :kind_of => String, :required => true
attribute :username, :kind_of => String, :required => true
attribute :password, :kind_of => String, :required => true
attribute :address_name, :kind_of => String, :required => false
attribute :new_ip, :kind_of => String, :required => false
attribute :tag, :kind_of => String, :required => false
attribute :address_group_name, :kind_of => String, :required => false
attribute :addresses, :kind_of => Hash, :required => false
