require 'mirrortools/version'
require 'thor'

module Mirrortools
  class CLI < Thor
    desc 'init REMOTE [LOCAL]', 'Initialize a local mirror'
    long_desc <<-LONGDESC
      `mrt init` initializes a local mirror
    LONGDESC
    def init(remote, local = nil)
      puts "mrt init #{remote} #{local}"
      puts "from" if options[:from]
    end

    desc 'clone REMOTE [LOCAL]', 'Clone a local mirror'
    long_desc <<-LONGDESC
      `mrt clone` clones a local mirror
    LONGDESC
    option :verbose,
           aliases: '-v',
           type: :boolean,
           desc: 'Increase verbosity'
    option :'dry-run',
           aliases: '-n',
           type: :boolean,
           desc: 'Perform a trial run with no changes made'
    option :delete,
           aliases: '-d',
           type: :boolean,
           desc: 'Delete extraneous files from destination dirs'
    option :backup,
           aliases: '-b',
           type: :boolean,
           desc: 'Make backups'
    def clone(remote, local = nil)
      puts "mrt clone #{remote} #{local}"
    end

    desc 'push [FILE]', 'Push a local mirror to the remote'
    long_desc <<-LONGDESC
      `mrt push` pushes a local mirror to the remote
    LONGDESC
    option :verbose,
           aliases: '-v',
           type: :boolean,
           desc: 'Increase verbosity'
    option :'dry-run',
           aliases: '-n',
           type: :boolean,
           desc: 'Perform a trial run with no changes made'
    option :delete,
           aliases: '-d',
           type: :boolean,
           desc: 'Delete extraneous files from destination dirs'
    option :backup,
           aliases: '-b',
           type: :boolean,
           desc: 'Make backups'
    option :force,
           aliases: '-f',
           type: :boolean,
           desc: 'Force push'
    option :remote,
           aliases: '-r',
           desc: 'Push to REMOTE'
    def push(file = nil)
      puts "mrt push #{file}"
    end

    desc 'pull [FILE]', 'Pull a local mirror from the remote'
    long_desc <<-LONGDESC
      `mrt pull` pulls a local mirror from the remote
    LONGDESC
    option :verbose,
           aliases: '-v',
           type: :boolean,
           desc: 'Increase verbosity'
    option :'dry-run',
           aliases: '-n',
           type: :boolean,
           desc: 'Perform a trial run with no changes made'
    option :delete,
           aliases: '-d',
           type: :boolean,
           desc: 'Delete extraneous files from destination dirs'
    option :backup,
           aliases: '-b',
           type: :boolean,
           desc: 'Make backups'
    option :force,
           aliases: '-f',
           type: :boolean,
           desc: 'Force pull'
    option :remote,
           aliases: '-r',
           desc: 'Pull from REMOTE'
    def pull(file = nil)
      puts "mrt pull #{file}"
    end

    desc 'autopush [PATH]', 'Push descendant local mirrors to the remote recursively'
    long_desc <<-LONGDESC
      `mrt autopush` pushes descendant local mirrors to the remote
    LONGDESC
    option :verbose,
           aliases: '-v',
           type: :boolean,
           desc: 'Increase verbosity'
    option :'dry-run',
           aliases: '-n',
           type: :boolean,
           desc: 'Perform a trial run with no changes made'
    option :delete,
           aliases: '-d',
           type: :boolean,
           desc: 'Delete extraneous files from destination dirs'
    option :backup,
           aliases: '-b',
           type: :boolean,
           desc: 'Make backups'
    option :force,
           aliases: '-f',
           type: :boolean,
           desc: 'Force push'
    option :remote,
           aliases: '-r',
           desc: 'Push to REMOTE'
    def autopush(path = nil)
      puts "mrt autopush #{path}"
    end

    desc 'autopull [PATH]', 'Pull descendant local mirrors from the remote recursively'
    option :verbose,
           aliases: '-v',
           type: :boolean,
           desc: 'Increase verbosity'
    option :'dry-run',
           aliases: '-n',
           type: :boolean,
           desc: 'Perform a trial run with no changes made'
    option :delete,
           aliases: '-d',
           type: :boolean,
           desc: 'Delete extraneous files from destination dirs'
    option :backup,
           aliases: '-b',
           type: :boolean,
           desc: 'Make backups'
    option :force,
           aliases: '-f',
           type: :boolean,
           desc: 'Force pull'
    option :remote,
           aliases: '-r',
           desc: 'Pull from REMOTE'
    long_desc <<-LONGDESC
      `mrt autopull` pulls descendant local mirrors from the remote recursively
    LONGDESC
    def autopull(path = nil)
      puts "mrt autopull #{path}"
    end

    desc 'remote [PATH]', 'Resolve the remote path for a PATH'
    long_desc <<-LONGDESC
      `mrt remote` resolves the remote path for a PATH
    LONGDESC
    option :set,
           aliases: '-s',
           banner: 'REMOTE',
           desc: 'Set PATH as a remote root path of REMOTE'
    option :remote,
           aliases: '-r',
           desc: 'Resolve the remote path by REMOTE'
    def remote(file = nil)
      puts "mrt remote #{file}"
    end
  end
end
