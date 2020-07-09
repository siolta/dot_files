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
  end

  desc "symlink dotfiles"
  task :link_dot_files do
    puts "linking all tracked dotfiles..."
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
