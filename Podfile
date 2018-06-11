source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target 'RKAutoLayout' do
  pod 'RKUIExtensions', '0.1.1'

  target 'RKAutoLayoutTests' do
    inherit! :search_paths
  end
end

post_install do |installer|
  Dir.glob(installer.sandbox.target_support_files_root + "Pods-*/*.sh").each do |script|
      flag_name = File.basename(script, ".sh") + "-Installation-Flag"
      folder = "${TARGET_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}"
      file = File.join(folder, flag_name)
      content = File.read(script)
      content.gsub!(/set -e/, "set -e\nKG_FILE=\"#{file}\"\nif [ -f \"$KG_FILE\" ]; then exit 0; fi\nmkdir -p \"#{folder}\"\ntouch \"$KG_FILE\"")
      File.write(script, content)
  end
end