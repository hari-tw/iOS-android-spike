require 'rake'
require 'xcoder'

  task :kill_simulator do
    system(%q{killall -m -KILL "iPhone Simulator"})
  end
  
  desc "Run all logic tests"
  task :logic => :kill_simulator do
    config = Xcode.project(:CountriesApp).target(:LogicTests).config(:Debug)
      builder = config.builder
      build_dir = File.dirname(config.target.project.path) + '/Build'
      builder.symroot = build_dir + '/Products'
      builder.objroot = build_dir
      builder.test(:sdk => 'iphonesimulator')
  end  
  
  desc "Run all application tests"
  task :application => :kill_simulator do
    config = Xcode.project(:CountriesApp).target(:ApplicationTests).config(:Debug)
      builder = config.builder
      build_dir = File.dirname(config.target.project.path) + '/Build'
      builder.symroot = build_dir + '/Products'
      builder.objroot = build_dir
      builder.test(:sdk => 'iphonesimulator')
    end

  desc "Run the all tests"
  task :all => ['logic', 'application']
  