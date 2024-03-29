# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "pdf-reader"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Healy"]
  s.date = "2012-03-25"
  s.description = "The PDF::Reader library implements a PDF parser conforming as much as possible to the PDF specification from Adobe"
  s.email = ["jimmy@deefa.com"]
  s.executables = ["pdf_object", "pdf_text", "pdf_list_callbacks", "pdf_callbacks"]
  s.extra_rdoc_files = ["README.rdoc", "TODO", "CHANGELOG", "MIT-LICENSE"]
  s.files = ["bin/pdf_object", "bin/pdf_text", "bin/pdf_list_callbacks", "bin/pdf_callbacks", "README.rdoc", "TODO", "CHANGELOG", "MIT-LICENSE"]
  s.homepage = "http://github.com/yob/pdf-reader"
  s.post_install_message = "\n  ********************************************\n\n  v1.0.0 of PDF::Reader introduced a new page-based API. There are extensive\n  examples showing how to use it in the README and examples directory.\n\n  For detailed documentation, check the rdocs for the PDF::Reader,\n  PDF::Reader::Page and PDF::Reader::ObjectHash classes.\n\n  The old API is marked as deprecated but will continue to work with no\n  visible warnings for now.\n\n  ********************************************\n\n"
  s.rdoc_options = ["--title", "PDF::Reader Documentation", "--main", "README.rdoc", "-q"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubygems_version = "1.8.15"
  s.summary = "A library for accessing the content of PDF files"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<roodi>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3"])
      s.add_development_dependency(%q<ZenTest>, ["~> 4.4.2"])
      s.add_runtime_dependency(%q<Ascii85>, ["~> 1.0.0"])
      s.add_runtime_dependency(%q<ruby-rc4>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<roodi>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.3"])
      s.add_dependency(%q<ZenTest>, ["~> 4.4.2"])
      s.add_dependency(%q<Ascii85>, ["~> 1.0.0"])
      s.add_dependency(%q<ruby-rc4>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<roodi>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.3"])
    s.add_dependency(%q<ZenTest>, ["~> 4.4.2"])
    s.add_dependency(%q<Ascii85>, ["~> 1.0.0"])
    s.add_dependency(%q<ruby-rc4>, [">= 0"])
  end
end
