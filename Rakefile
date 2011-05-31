require 'fileutils'
require 'tempfile'
require 'open-uri'

def dotfile(*path)
  File.join File.dirname(__FILE__), 'src', *path
end

namespace :update do
  desc "Force-update Pathogen"
  task :pathogen do
    Tempfile.open('pathogen') do |f|
      pathogen = dotfile('vim/autoload/pathogen.vim')
      f << open('https://github.com/tpope/vim-pathogen/blob/master/autoload/pathogen.vim').read
      FileUtils.mkdir_p File.dirname(pathogen)
      FileUtils.install f.path, pathogen
    end
  end
end