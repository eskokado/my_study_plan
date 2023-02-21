Gem::Specification.new do |spec|
  spec.name = "my_gem"
  spec.version = "v0.6.0"
  spec.authors = ["Edson Shideki Kokado"]
  spec.email = ["eskokado@gmail.com"]
  spec.summary = "My Gem - Coleção de algoritmos em Ruby"
  spec.description = "My Gem é uma coleção de algoritmos em Ruby que inclui algoritmos de busca, ordenação e outros algoritmos úteis para desenvolvimento de software."
  spec.homepage = "https://github.com/eskokado/my_study_plan"
  spec.license = "MIT"

  spec.files = Dir["lib/MyGem/**/*", "spec/MyGem/**/*", "LICENSE.txt", "README.md", "my_gem.gemspec"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec"
end
