Pod::Spec.new do |spec|

  spec.name         = "ShowToastSDK"
  spec.version      = "1.0.0"
  spec.summary      = "This is the framework used for showing toast message."
  spec.description  = "This is framework used for showing toast message in ios app."

  spec.homepage     = "https://github.com/aniketpatil045/ShowToastSDK"

  spec.license      = "MIT"

  spec.author       = { "aniketpatil045" => "aniketpatil045@gmail.com" }
  spec.platform     = :ios, "14.0"

  spec.source       = { :git => "https://github.com/aniketpatil045/ShowToastSDK.git", :tag => spec.version.to_s }

  spec.source_files = "ShowToastSDK/ShowToastSDK/*.{h,swift}"

  spec.framework    = "UIKit"
  spec.swift_version = "5.0"

  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }


end

