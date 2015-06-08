module OkCuGit
  class Finder
    def initialize(repo_name)
      @repo_name = 'https://github.com/' + repo_name + '.git'
      @directory_name = repo_name.split('/').last
    end

    def command_line
      `git -C ~/Turing/temp/ fetch #{@repo_name}`
      `git -C ~/Turing/temp/#{@directory_name} log --all --format='%aN <%cE>' | sort -u`
    end

    def all_contributors
      command_line.split("\n")
    end
  end
end
