Pod::Spec.new do |s|
  s.name             = 'StanwoodAnalytics'
  s.version          = '0.4.4'
  s.summary          = 'StanwoodAnalytics encapsulates the frameworks Stanwood uses from various vendors used in analytics and logging.'
  s.description      = <<-DESC
A framework to encapsulate analytics and logging frameworks from Fabric, Crashlytics, Google, Firebase and BugFender.
                       DESC

  s.homepage         = 'https://github.com/stanwood/Stanwood_Analytics_iOS'
  s.license          = { :type => 'Private', :file => 'LICENSE' }
  s.author           = { 'Ronan O Ciosoig' => 'ronan.o.ciosoig@stanwood.de' }
  s.source           = { :git => 'git@github.com:stanwood/Stanwood_Analytics_iOS.git', :tag => s.version.to_s}
  
  s.ios.deployment_target = '10.0'
  s.default_subspec = 'Base'
  s.pod_target_xcconfig = {
      'OTHER_LDFLAGS' => '-ObjC'
  }
  
  s.libraries = [
  'c++',
  'sqlite3',
  'z',
  ]
  
  s.subspec 'Core' do |ss|
      ss.source_files = 'StanwoodAnalytics/Classes/Core/'
  end
  
  s.subspec 'Base' do |ss|
      ss.dependency 'StanwoodAnalytics/Core'
      ss.dependency 'StanwoodAnalytics/Firebase'
      ss.dependency 'StanwoodAnalytics/Fabric'
  end
  
  s.subspec 'Firebase' do |ss|
      ss.dependency 'StanwoodAnalytics/Core'
      ss.dependency 'StanwoodAnalytics/FirebaseAnalytics'
      ss.source_files = 'StanwoodAnalytics/Classes/SubSpecs/Firebase/'
  end
  
  s.subspec 'FirebaseAnalytics' do |ss|
      ss.dependency 'StanwoodAnalytics/FirebaseCore'
      ss.dependency 'StanwoodAnalytics/FirebaseCoreDiagnostics'
      ss.dependency 'StanwoodAnalytics/FirebaseIstanceID'
      ss.dependency 'StanwoodAnalytics/FirebaseNanoPB'
      ss.dependency 'GoogleToolboxForMac', '~> 2.1'
      
      ss.ios.vendored_frameworks = 'Frameworks/FirebaseAnalytics.framework'
      ss.frameworks = [
      'AddressBook',
      'AdSupport',
      'SafariServices',
      'Security',
      'StoreKit',
      'SystemConfiguration',
      ]
  end
  
  s.subspec 'FirebaseCore' do |ss|
      ss.ios.vendored_frameworks = 'Frameworks/FirebaseCore.framework'
  end
  
  s.subspec 'FirebaseCoreDiagnostics' do |ss|
      ss.dependency 'StanwoodAnalytics/FirebaseCore'
      ss.dependency 'StanwoodAnalytics/FirebaseNanoPB'
      ss.ios.vendored_frameworks = 'Frameworks/FirebaseCoreDiagnostics.framework'
  end
  
  s.subspec 'FirebaseIstanceID' do |ss|
      ss.ios.vendored_frameworks = 'Frameworks/FirebaseInstanceID.framework'
  end
  
  s.subspec 'FirebaseNanoPB' do |ss|
      ss.ios.vendored_frameworks = ['Frameworks/FirebaseNanoPB.framework',
      'Frameworks/nanopb.framework',]
  end
  
  s.subspec 'Fabric' do |ss|
      ss.dependency 'StanwoodAnalytics/Core'
      ss.source_files = 'StanwoodAnalytics/Classes/SubSpecs/Fabric/'
      ss.ios.vendored_frameworks = ['Frameworks/Crashlytics.framework',
      'Frameworks/Fabric.framework']
  end
  
  s.subspec 'BugFender' do |ss|
      ss.dependency 'BugfenderSDK', '~> 1.4'
      ss.dependency 'StanwoodAnalytics/Core'
      ss.source_files = 'StanwoodAnalytics/Classes/SubSpecs/BugFender/'
  end
  
  s.subspec 'TestFairy' do |ss|
      ss.ios.vendored_library = 'Frameworks/libTestFairy.a'
      ss.dependency 'StanwoodAnalytics/Core'
      ss.source_files = 'StanwoodAnalytics/Classes/SubSpecs/TestFairy/*.{swift,h,m}'
      ss.frameworks = [
      'CoreMedia',
      'CoreMotion',
      'AVFoundation',
      'SystemConfiguration',
      'OpenGLES'
      ]
  end
end
