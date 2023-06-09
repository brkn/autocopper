# frozen_string_literal: true

require_relative "autocopper/block"
require_relative "autocopper/cli"
require_relative "autocopper/corrector"
require_relative "autocopper/file_parser"
require_relative "autocopper/main"
require_relative "autocopper/utils"

module Autocopper
  autoload :VERSION, "autocopper/version"
end
