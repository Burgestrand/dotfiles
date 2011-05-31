require 'fileutils'
require 'tempfile'
require 'open-uri'

def dotfile(*path)
  File.join File.dirname(__FILE__), 'src', *path
end

def expand(path)
  File.expand_path(path)
end

namespace :update do
  desc "Force-update Pathogen"
  task :pathogen do
    Tempfile.open('pathogen') do |f|
      pathogen = dotfile('vim/autoload/pathogen.vim')
      f << open('https://github.com/tpope/vim-pathogen/raw/master/autoload/pathogen.vim').read
      FileUtils.mkdir_p File.dirname(pathogen)
      FileUtils.install f.path, pathogen
    end
  end
end

namespace :install do
  desc "Do some vim-install specific thingies"
  task :vim => ['update:pathogen'] do
    Dir.chdir dotfile('vim/bundle/Command-T/ruby/command-t') do
      sh "ruby extconf.rb"
      sh "make"
    end
  end
end

desc "Install all dotfiles"
task :install => ['install:vim'] do
  
end