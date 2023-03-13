# frozen_string_literal: true

# TODO: add dry-cli gem

module Autocopper
  class CLI
    DEFAULT_FILE_PATH = ".rubocop_todo.yml"

    def call(argv)
      raise "Incorrect number of arguments.\n#{usage_message}" if ARGV.length > 1

      Main.new(file_path, num_of_cops(argv[0])).call
    end

    private

    def num_of_cops(arg)
      return nil if arg.nil?

      Integer(arg)
    rescue StandardError
      raise "max_number_of_commits should be a positive integer, recieved #{arg}.\n#{usage_message}"
    end

    def file_path
      # TODO: return the path argument instead. DEFAULT_FILE_PATH is the guard clause is for if that arg is nil

      DEFAULT_FILE_PATH
    end

    def usage_message
      "Usage: copper [max_number_of_commits]"
    end
  end
end