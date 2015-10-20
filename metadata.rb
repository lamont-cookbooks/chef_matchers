maintainer "Lamont Granquist"
maintainer_email "lamont@scriptkiddie.org"
license "Apache 2.0"
source_url "https://github.com/lamont-cookbooks/chef_matchers"
issues_url "https://github.com/lamont-cookbooks/chef_matchers/issues"
description "No description yet"
long_description "No description yet"
version "0.0.1"
name "chef_matchers"

depends "compat_resource"

chef_version ">= 12.0.0" if respond_to?(:chef_version)
