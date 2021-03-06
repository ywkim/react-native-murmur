require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'react-native-murmur'
  s.version      = package['version']
  s.summary      = 'React Native Speech component for iOS'

  s.homepage     = 'https://github.com/ywkim/react-native-murmur'
  s.license      = { type: 'MIT', file: 'LICENSE' }
  s.author       = { 'Youngwook Kim' => 'youngwook.kim@gmail.com' }
  s.source       = { git: 'https://github.com/ywkim/react-native-murmur.git' }
  s.ios.deployment_target = '10.0'
  s.source_files = 'ios/**/*'
end
