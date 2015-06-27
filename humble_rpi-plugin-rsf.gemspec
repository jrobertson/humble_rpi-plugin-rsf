Gem::Specification.new do |s|
  s.name = 'humble_rpi-plugin-rsf'
  s.version = '0.1.0'
  s.summary = 'A plugin to run an RSF job from within the HumbleRPi gem'
  s.authors = ['James Robertson']
  s.files = Dir['lib/humble_rpi-plugin-rsf.rb']
  s.add_runtime_dependency('spstrigger_execute', '~> 0.4', '>=0.4.3')
  s.add_runtime_dependency('rscript', '~> 0.2', '>=0.2.2')  
  s.signing_key = '../privatekeys/humble_rpi-plugin-rsf.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/humble_rpi-plugin-rsf'
end
