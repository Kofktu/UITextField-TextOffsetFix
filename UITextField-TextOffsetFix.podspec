#
#  Be sure to run `pod spec lint UITextField-TextOffsetFix.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "UITextField+TextOffsetFix"
  s.version      = "0.0.1"
  s.summary      = "UITextField character moves down when editing bug fix in iOS10"
  s.homepage     = "https://github.com/Kofktu/UITextField-TextOffsetFix"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Kofktu" => "kofktu@gmail.com" }
  s.source       = { :git => "https://github.com/Kofktu/UITextField-TextOffsetFix.git", :tag => "#{s.version}" }
  s.platform     = :ios, "8.0"
  s.requires_arc = true
  s.source_files  = "UITextField+TextOffsetFix/UITextField+TextOffsetFix.{h,m}"
  s.frameworks = "Foundation", "UIKit"
end
