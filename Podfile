# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'JusperXdweSpein' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for JusperXdweSpein
pod 'SDWebImage'
pod 'SwiftyStoreKit'
pod "IQKeyboardManager"
pod "SwiftyJSON"


end
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
      config.build_settings['SWIFT_VERSION'] = '5.0'
      config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Onone'
    end
  end
end
