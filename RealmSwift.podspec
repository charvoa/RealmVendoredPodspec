Pod::Spec.new do |s|
  s.name                      = 'RealmSwift'
  s.version                   = '3.14.0'

  s.summary                   = 'Realm is a modern data framework & database for iOS, macOS, tvOS & watchOS.'
  s.description               = <<-DESC
                                The Realm Mobile Database, for Swift. (If you want to use Realm from Objective-C, see the “Realm” pod.)

                                The Realm Mobile Database is a fast, easy-to-use replacement for Core Data & SQLite. Use it with the Realm Mobile Platform for realtime, automatic data sync. Works on iOS, macOS, tvOS & watchOS. Learn more and get help at https://realm.io.
                                DESC
  s.homepage                  = "https://realm.io"
  s.social_media_url          = 'https://twitter.com/realm'
  s.author                    = { 'Realm' => 'help@realm.io' }
  s.license                   = { :type => 'MIT', :text => <<-LICENSE
                                                          Copyright 2012
                                                          Permission is granted to...
                                                         LICENSE
                                 }

  # has_versioned_docs          = !(version =~ /alpha|beta|rc/)
  # s.documentation_url         = "https://realm.io/docs/swift/#{has_versioned_docs ? s.version : 'latest'}"

  s.swift_version           = '4.2'
  s.requires_arc            = true

  # s.ios.deployment_target     = '8.0'
  # s.osx.deployment_target     = '10.9'

  # s.tvos.deployment_target    = '9.0'
  # s.watchos.deployment_target = '2.0'

  # s.source                  = { :http => "https://github.com/realm/realm-cocoa/releases/download/v#{s.version}/Carthage.framework.zip" }

  # s.preserve_path           = "Carthage/Build/iOS/RealmSwift.framework*"
  # s.vendored_frameworks     = "Carthage/Build/iOS/RealmSwift.framework"

  s.source                  = { :http => "https://github.com/realm/realm-cocoa/releases/download/v#{s.version}/realm-swift-#{s.version}.zip" }
  s.preserve_path           = "realm-swift-#{s.version}/LICENSE*", "realm-swift-#{s.version}/ios/swift-#{s.swift_version}/RealmSwift.framework"
  s.vendored_frameworks     = "realm-swift-#{s.version}/ios/swift-#{s.swift_version}/RealmSwift.framework"

  ## Dependencies
  s.dependency 'Realm', "= #{s.version}"
end