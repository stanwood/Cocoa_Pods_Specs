#
# Be sure to run `pod lib lint StanwoodAnalytics.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'StanwoodAnalytics'
  s.version          = '0.1.2'
  s.summary          = 'StanwoodAnalytics encapsulates the frameworks Stanwood uses from various vendors used in analytics and logging.'
  s.description      = <<-DESC
A framework to encapsulate analytics and logging frameworks from Fabric, Crashlytics, Google, Firebase and BugFender.
                       DESC

  s.homepage         = 'https://github.com/stanwood/Stanwood_Analytics_iOS'
  s.license          = { :type => 'Private', :file => 'LICENSE' }
  s.author           = { 'Ronan O Ciosoig' => 'ronan.o.ciosoig@stanwood.de' }
  s.source           = { :git => 'https://github.com/stanwood/Stanwood_Analytics_iOS.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'StanwoodAnalytics/Classes/**/*'

  s.resource_bundles = {
  }
  
  # s.resource_bundles = {
  #   'StanwoodAnalytics' => ['StanwoodAnalytics/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'

  s.dependency 'BugfenderSDK', '~> 1.4'
end
