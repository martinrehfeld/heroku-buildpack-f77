desc 'build the f2c software on a vulcan build server'
task :build do
  sh "vulcan build -s ./vendor/f2c -p /tmp/f2c -n f2c-20110801 -c './build.sh' -v"
  puts "\nTo use this build upload the artifacts archive to the f77-buildpack bucket on S3\n"
end
