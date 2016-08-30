
# nothing here now

raise "root does not exist" unless user_exists?("root")

raise "arglebargle exists" if user_exists?("arglebargle")

raise "bash not installed" unless package_installed?("bash")

raise "zsh installed" if package_installed?("zsh")

raise "arglebargle installed" if package_installed?("arglebargle")

raise "zsh not installable" unless package_installable?("zsh")

raise "arglebargle installable" if package_installable?("arglebargle")

raise "tzdata not upgradable" unless package_upgradable?("tzdata")
