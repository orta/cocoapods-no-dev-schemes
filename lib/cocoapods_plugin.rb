Pod::HooksManager.register('cocoapods-no-dev-schemes', :post_install) do |context, user_options|
  require 'fileutils'

  # we want to undo - https://github.com/CocoaPods/CocoaPods/pull/3600
  # So we need to undo this function:
  # https://github.com/CocoaPods/Xcodeproj/blob/27aecbfd66e883d1df616355347246b30fec551d/lib/xcodeproj/scheme.rb#L224-L244

  shared_scheme_path = "Pods/Pods.xcodeproj/xcshareddata/"
  if Dir.exist?(shared_scheme_path)

    # But I've not needed to undo it yet.
    # Happy to take PRs on moving it back into the users scheme.

    FileUtils.rm_r(shared_scheme_path)
  end
end
