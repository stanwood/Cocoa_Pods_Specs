Pod::Spec.new do |s|
  s.name             = 'StanwoodAnalytics'
  s.version          = '0.7.0'
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
      'OTHER_LDFLAGS' => '-ObjC',
      'FRAMEWORK_SEARCH_PATHS' => '$(inherited)'
  }
  
  s.libraries = [
  'c++',
  'sqlite3',
  'z',
  ]
  
  s.frameworks = 'UserNotifications'
  
  s.subspec 'Core' do |ss|
      ss.source_files = 'StanwoodAnalytics/Classes/Core/'
  end
  
  s.subspec 'Base' do |ss|
      ss.dependency 'StanwoodAnalytics/Core'
      ss.dependency 'StanwoodAnalytics/Fabric'
      #ss.dependency 'StanwoodAnalytics/Firebase'
  end
  
  #s.subspec 'Firebase' do |ss|
  #    ss.dependency 'StanwoodAnalytics/Core'
  #    ss.dependency 'Firebase/Analytics'
  #    ss.source_files = 'StanwoodAnalytics/Classes/SubSpecs/Firebase/'
  #    ss.frameworks = ['FirebaseCore',
  #    'FirebaseInstanceID',
  #    'FirebaseAnalytics',
  #    'FirebaseCoreDiagnostics',
  #    'FirebaseNanoPB']
  #end
  
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
  
  s.subspec 'Mixpanel' do |ss|
      ss.dependency 'Mixpanel-swift'
  end
  
  s.subspec 'Adjust' do |ss|
      ss.dependency 'Adjust', '~> 4.8.5'
  end
  
  # Fails
  # [!] The 'Pods-StanwoodAnalytics_Example' target has transitive dependencies that include static binaries:
  # (/Users/ronanocsono/CustomerProjects/Stanwood/Stanwood_Analytics_iOS/Example/Pods/GoogleAnalytics/Libraries/libGoogleAnalytics.a
  #s.subspec 'GoogleAnalytics' do |ss|
  # ss.dependency 'GoogleAnalytics'
      #end
  
  s.subspec 'Google' do |ss|
      ss.dependency 'StanwoodAnalytics/Core'
      #Frameworks/GoogleAnalytics-3.17.0
      # ss.source = { :http => "https://www.gstatic.com/cpdc/5cd71dd2f756bb01/GoogleAnalytics-3.17.0.tar.gz" }
      ss.vendored_library = [
      'StanwoodAnalytics/Frameworks/GoogleAnalytics-3.17.0/Libraries/libGoogleAnalytics.a'
      ]
      ss.source_files =  'StanwoodAnalytics/Frameworks/GoogleAnalytics-3.17.0/Sources/*.h', 'StanwoodAnalytics/Classes/SubSpecs/GoogleAnalytics/'

      #[
      #"Sources/GAI.h",
      #"Sources/GAIDictionaryBuilder.h",
      #"Sources/GAIEcommerceFields.h",
      #"Sources/GAIEcommerceProduct.h",
      #"Sources/GAIEcommerceProductAction.h",
      #"Sources/GAIEcommercePromotion.h",
      #"Sources/GAIFields.h",
      #"Sources/GAILogger.h",
      #"Sources/GAITrackedViewController.h",
      #"Sources/GAITracker.h"
      #]
      # ss.dependency 'Google/Analytics'
      
      #ss.source_files = 'StanwoodAnalytics/Classes/SubSpecs/GoogleAnalytics/'
      ss.frameworks = [
      'CoreData',
      'SystemConfiguration'
      ]
      ss.libraries = ['z', 'sqlite3']
  end
end
