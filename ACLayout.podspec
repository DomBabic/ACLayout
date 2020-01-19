#
#  Be sure to run `pod spec lint ACLayout.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "ACLayout"
  spec.version      = "0.0.3"
  spec.summary      = "Syntax sugar for methods related to UIView's anchors."

  spec.description  = <<-DESC
                      ACLayout is a series of extension methods used for programmatically setting up UIView's layout. The aim of this pod is to simplify writing of the layout code.
                   DESC

  spec.homepage     = "https://github.com/DomBabic/ACLayout"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Dominik Babić" => "domynick93@hotmail.com" }
  spec.platform     = :ios, "9.0"
  spec.swift_version = '4.0'
  spec.source       = { :git => "https://github.com/DomBabic/ACLayout.git", :tag => spec.version }
  spec.source_files  = "ACLayout", "ACLayout/**/*.{h,m}"

end
