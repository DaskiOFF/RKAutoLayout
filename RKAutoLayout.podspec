#
# Be sure to run `pod lib lint RKAutoLayout.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RKAutoLayout'
  s.version          = '0.1.1'
  s.summary          = 'Easy Auto Layout'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Easy Auto Layout
  
  0.1.1
    Update README

  0.1.0
    Init
                       DESC

  s.homepage         = 'https://github.com/DaskiOFF/RKAutoLayout'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DaskiOFF' => 'waydeveloper@gmail.com' }
  s.source           = { :git => 'https://github.com/DaskiOFF/RKAutoLayout.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'Sources/**/*'
  
  # s.resource_bundles = {
  #   'RKAutoLayout' => ['RKAutoLayout/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'RKUIExtensions', '~> 0.1.1'
end
