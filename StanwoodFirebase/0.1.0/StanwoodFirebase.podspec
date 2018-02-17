Pod::Spec.new do |s|
  s.name             = 'StanwoodFirebase'
  s.version          = '0.1.0'
  s.summary          = 'This pod is a wrapper for the Firebase frameworks (4.8.2) to prevent conflicts when using the StanwoodAnalytics framework.'

  s.description      = <<-DESC
Use this pod if you intend to use Firebase frameworks along side Stanwood Analytics framework. This pod is a fix for the CocoaPods dependency management as Stanwood Analytics loads static frameworks directly because it is not supported by CocoaPods 1.4.0
                       DESC

  s.homepage         = 'https://github.com/stanwood/Stanwood_Firebase_iOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ronan O Ciosoig' => 'ronan.o.ciosoig@stanwood.de' }
  s.source           = { :git => 'git@github.com:stanwood/Stanwood_Firebase_iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.default_subspec = 'Protobuf'
  s.pod_target_xcconfig = {
      'OTHER_LDFLAGS' => '-ObjC'
  }
  
  s.libraries = [
  'c++',
  'sqlite3',
  'z',
  ]
  
  s.frameworks = [
  'AddressBook',
  'AdSupport',
  'SafariServices',
  'Security',
  'StoreKit',
  'SystemConfiguration',
  ]

#s.subspec 'RemoteConfig' do |ss|
#     ss.dependency 'StanwoodFirebase/Protobuf'
#     ss.dependency 'StanwoodFirebase/FirebaseABTesting'
#     ss.dependency 'GoogleSymbolUtilities'
#     ss.dependency 'GoogleToolboxForMac', '~> 2.1'
#   ss.ios.vendored_frameworks = 'StanwoodFirebase/Frameworks/RemoteConfig/FirebaseRemoteConfig.framework'
#  end
  
  s.subspec 'Protobuf' do |ss|
      ss.ios.vendored_frameworks = 'StanwoodFirebase/Frameworks/RemoteConfig/Protobuf.framework'
  end
  
  #s.subspec 'FirebaseABTesting' do |ss|
  #    ss.ios.vendored_frameworks = 'StanwoodFirebase/Frameworks/RemoteConfig/FirebaseABTesting.framework'
  #end
  
  #"GoogleSymbolUtilities": "~> 1.1",
  #"GoogleInterchangeUtilities": "~> 1.2"
  
  #s.dependency 'StanwoodAnalytics/FirebaseAnalytics'
  
end
