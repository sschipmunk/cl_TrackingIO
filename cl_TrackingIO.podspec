Pod::Spec.new do |s|

  s.name         = "cl_TrackingIO"
  s.version      = "1.4.0"
  s.summary      = "ReYun Tracking SDK"
  s.homepage         = "https://github.com/Jeffrey-huang/cl_TrackingIO"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "huangwenchang" => "huangwenchang@chelun.com" }

  s.platform     = :ios

  s.ios.deployment_target = "8.0"
  
  s.source        = { :git => "https://github.com/Jeffrey-huang/cl_TrackingIO.git", :tag => s.version }

  s.source_files  = 'Tracking/*.h'

  s.preserve_paths = 'Tracking/*.a'
  
  s.vendored_libraries = 'Tracking/*.a'

  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/TrackingSDK/Tracking/**"' }
  
  s.frameworks = 'SystemConfiguration','AdSupport','CoreTelephony','Security','CoreMotion'

  s.libraries  = 'sqlite3','ReYunTracking'

end
