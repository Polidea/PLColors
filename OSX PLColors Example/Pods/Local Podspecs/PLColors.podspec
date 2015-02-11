Pod::Spec.new do |s|
  s.name             = "PLColors"
  s.version          = "0.2.0"
  s.summary          = "Creating UIColor objects based on the hexadecimal representation of the colors."
  s.description      = <<-DESC
                       PLColors is an UIColor category that provides methods that allows you to create UIColor objects
                       based on the hexadecimal representation of the colors, similar to that used in HTML or CSS language.
                       DESC
  s.homepage         = "https://github.com/Polidea/PLColors"
  s.license          = 'MIT'
  s.author           = { "Michał Laskowski" => "michal.laskowski@polidea.com" }
  s.source           = { :git => "https://github.com/Polidea/PLColors.git", :tag => s.version.to_s }

  s.ios.deployment_target = "6.0"
  s.osx.deployment_target = "10.8"
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  
  s.ios.exclude_files = "Pod/Classes/NSColor+PLColors.h"
  s.osx.exclude_files = "Pod/Classes/UIColor+PLColors.h"

  s.ios.framework = "UIKit"
  s.osx.framework = "AppKit"
end