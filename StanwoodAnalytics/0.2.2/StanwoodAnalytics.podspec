Pod::Spec.new do |s|
  s.name             = 'StanwoodAnalytics'
  s.version          = '0.2.2'
  s.summary          = 'StanwoodAnalytics encapsulates the frameworks Stanwood uses from various vendors used in analytics and logging.'
  s.description      = <<-DESC
A framework to encapsulate analytics and logging frameworks from Fabric, Crashlytics, Google, Firebase and BugFender.
                       DESC

  s.homepage         = 'https://github.com/stanwood/Stanwood_Analytics_iOS'
  s.license          = { :type => 'Private', :file => 'LICENSE' }
  s.author           = { 'Ronan O Ciosoig' => 'ronan.o.ciosoig@stanwood.de' }
  s.source           = { :git => 'https://github.com/stanwood/Stanwood_Analytics_iOS.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '9.0'
  s.source_files = 'StanwoodAnalytics/Classes/**/*'
  
  s.dependency 'BugfenderSDK', '~> 1.4'
  
  s.ios.vendored_frameworks = ['Frameworks/Crashlytics.framework',
  'Frameworks/Fabric.framework',
  'Frameworks/FirebaseAnalytics.framework',
  'Frameworks/FirebaseCore.framework',
  'Frameworks/FirebaseCoreDiagnostics.framework',
  'Frameworks/FirebaseInstanceID.framework',
  'Frameworks/FirebaseNanoPB.framework',
  'Frameworks/GoogleToolboxForMac.framework',
  'Frameworks/nanopb.framework',]
  
  s.pod_target_xcconfig = {
      'OTHER_LDFLAGS' => '-ObjC'
  }
  
  s.frameworks = [
  'AddressBook',
  'AdSupport',
  'SafariServices',
  'Security',
  'StoreKit',
  'SystemConfiguration',
  ]
  
  s.libraries = [
  'c++',
  'sqlite3',
  'z',
  ]
  
end
