
module ChefMatchers

  #
  # cron resource
  #

  def cron_command_exists?(command)
  end

  #
  # group resource
  #

  def group_exists?(name)
    !build_resource(:group, name).current_value.uid.nil?
  end

  def group_includes?(group, *members)
  end

  #
  # ifconfig resource
  #
  def ifconfig_device_exists?(device)
  end

  #
  # link resource
  #

  def link_exists?(to)
  end

  #
  # user resource
  #

  def user_exists?(name)
    !build_resource(:user, name).current_value.uid.nil?
  end

  #
  # package resource
  #

  def package_installed?(package_name)
    !build_resource(:package, package_name).current_value.version.nil?
  end

  def package_installable?(package_name)
    !build_resource(:package, package_name).current_provider.candidate_version.nil?
  end

  def package_upgradable?(package_name)
    current_value = build_resource(:package, package_name).current_value
    current_provider = build_resource(:package, package_name).current_provider
    puts "candiate_version exists" if current_provider.candidate_version
    puts "CANDIDATE VERSION: #{current_provider.candidate_version}"
    puts "CURRENT VERSION: #{ current_value.version}"
    current_provider.candidate_version &&
      ( current_value.version != current_provider.candidate_version )
  end

  #
  # file resource
  #

  def file_matches_content?(path, content)
  end

  def file_includes_content?(path, content)
  end

  def file_exists?(path)
  end

  def file_mode?(path, mode)
  end

  def file_owner?(path, owner)
  end

  def file_group?(path, group)
  end

  def file_acl?(path, owner, group, mode)
  end

  #FIXME? minitest includes mtime matches that don't use the file resource

  #
  # directory resource
  #

  def directory_exists?(path)
  end

  #
  # service resource
  #

  def service_enabled?(name)
  end

  def service_started?(name)
  end

  #
  # mount resource
  #

  def mounted?(mountpoint)
  end

  def mount_enabled?(mountpoint)
  end

  #
  # logrotation (not a chef resource, but too cool not to include)
  #

  def logrotated?(file)
  end

end

puts "UP IN YOUR LIBRARIEZ PARSING YOUR SHIZZ"

Chef::Recipe.send(:include, ChefMatchers)
Chef::Resource.send(:include, ChefMatchers)
Chef::Provider.send(:include, ChefMatchers)
