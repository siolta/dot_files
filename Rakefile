# Test zsh is installed and > 5.4.2
# zsh --version

# if not installed, install or upgrade zsh

# check zsh is default shell
# echo $SHELL == /usr/bin/shell

# Install thefuck, poetry, and the zsh-completions lib

namespace :test do

  desc "tests printing to sdout"
  task :test_print do
    puts "this is a test_print"
  end

  desc "tests that all files are symlinked properly"
  task :test_links do
    puts "testing symlinks..."
  end
  
  task :all => [:test_print, :test_links]
end


namespace :setup do

  desc "run test ping"
  task :test_ping do
    sh %Q{ping google.com -c 4}
  end
  
  desc "Install oh-my-zsh"
  task :install_omzsh do
    puts "installing oh myy zsh..."
    sh %Q{sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"}
  end

  desc "symlink dotfiles"
  task :link_dot_files do
    puts "linking all tracked dotfiles..."
    src, dest = "./test.txt", "/Users/skylar.iolta/test_lonk.txt"
    system "ln -s #{src} #{dest}"
  end

  task :all => [:install_omzsh, :link_dot_files]
end

namespace :greeting do
  desc "outputs hello to the terminal"
  task :hello do
    puts "hellooo from Rake!"
  end

  desc "outputs hola to the terminal"
  task :hola do
    puts "hola de Rake!"
  end
end



# require 'rake'

# desc "Install dot files as symbolic links"
# task :install do
#   dots = File.join(Dir.getwd, "home")
#   home = Dir.home
#   backup = File.join(home, ".backup-dotfiles")
#   Dir.mkdir(backup) unless File.directory?(backup)
#   files = Dir.entries(dots) - [".", ".."]
#   files.each do |file|
#     src  = File.join(dots, file)
#     dest = File.join(home, file)
#     unless File.symlink?(dest)
#       if File.exists?(dest)
#         puts "Moving existing #{file} to #{backup}"
#         system "mv #{dest} #{backup}"
#       end
#       puts "Linking #{file}"
#       system "ln -s #{src} #{dest}"
#     end
#   end
# end
