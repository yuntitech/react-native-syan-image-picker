require 'json'
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name            = "RNSyanImagePicker"
  s.version         = package["version"]
  s.summary         = package['description']
  s.summary         = "RNSyanImagePicker"
  s.homepage        = "https://github.com/syanbo/react-native-syan-image-picker"
  s.license         = "MIT"
  s.author          = { "author" => "hanhun@163.com" }
  s.platform        = :ios, "7.0"
  s.source          = { :git => "https://github.com/syanbo/react-native-syan-image-picker.git" }
  s.source_files    = "**/*.{h,m}"
  s.requires_arc    = true
  s.resource        = "TZImagePickerController/TZImagePickerController.bundle"

  s.dependency "React"

  # https://github.com/banchichen/TZImagePickerController/commit/c904492761d1f9c531e7f35ab0b25fdeffa44dc2
  s.dependency "TZImagePickerController", "3.6.8"

end
