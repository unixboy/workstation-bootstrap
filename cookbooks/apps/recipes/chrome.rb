#
# Cookbook Name:: apps
# Recipe:: chrome
#
# Copyright 2011, Ben Bleything <ben@bleything.net>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'dmg'

dmg_package 'Google Chrome' do
  dmg_name 'google_chrome'
  node[:chrome][:url]
  # source   'http://dl.google.com/chrome/mac/dev/GoogleChrome.dmg'
end

# @TODO(joe): incorporate these into chef execution
# defaults write com.google.Chrome AutoSelectCertificateForUrls -array
# defaults write com.google.Chrome AutoSelectCertificateForUrls -array-add -string '{"pattern":"https://[*.]panth.io:[*.]","filter":{"ISSUER":{"CN":"internal.getpantheon.com"}}}'
# defaults write com.google.Chrome AutoSelectCertificateForUrls -array-add -string '{"pattern":"https://[*.]panth.io:8090","filter":{"ISSUER":{"CN":"internal.getpantheon.com"}}}'
# defaults write com.google.Chrome AutoSelectCertificateForUrls -array-add -string '{"pattern":"https://[*.]dashboard.getpantheon.com","filter":{"ISSUER":{"CN":"internal.getpantheon.com"}}}'
# defaults write com.google.Chrome AutoSelectCertificateForUrls -array-add -string '{"pattern":"https://[*.]metrics.getpantheon.com","filter":{"ISSUER":{"CN":"internal.getpantheon.com"}}}'
# defaults write com.google.Chrome AutoSelectCertificateForUrls -array-add -string '{"pattern":"https://[*.]logs.getpantheon.com","filter":{"ISSUER":{"CN":"internal.getpantheon.com"}}}'
# defaults write com.google.Chrome AutoSelectCertificateForUrls -array-add -string '{"pattern":"https://[*.]live.getpantheon.com","filter":{"ISSUER":{"CN":"internal.getpantheon.com"}}}'
# defaults write com.google.Chrome AutoSelectCertificateForUrls -array-add -string '{"pattern":"https://[*.]sensu.getpantheon.com","filter":{"ISSUER":{"CN":"internal.getpantheon.com"}}}'
