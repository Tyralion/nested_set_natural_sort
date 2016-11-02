# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nested_set_natural_sort/version'

Gem::Specification.new do |spec|

  spec.name          = "nested_set_natural_sort"
  spec.version       = NestedSetNaturalSort::VERSION
  spec.authors       = ["Ivan Piliaev (Tyralion)"]
  spec.email         = ["piliaiev@gmail.com"]
  spec.license       = "BSD"

  spec.summary       = %q{Natural sorting for nestes set.}
  spec.description   = %q{Natural sorting for nestes set.}
  spec.homepage      = "https://github.com/Tyralion/nested_set_natural_sort"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0'

  spec.add_runtime_dependency   'awesome_nested_set', '>= 3.1'
  spec.add_runtime_dependency   'naturalsorter'

end
