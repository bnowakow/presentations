require 'tilt'
require 'erb'
require 'asciidoctor'
require 'asciidoctor-diagram'

guard 'shell' do
  watch(%r{^(.+)/(.+)\.adoc$}) { |m|
    Asciidoctor.render_file m[0],
        :in_place => true,
        :safe => :unsafe,
        :backend => 'dzslides',
        :template_dir => 'asciidoctor-backends/slim/'
    n m[0], "Slides rebuilt"
  }
end

guard 'livereload' do
  watch(%r{^.+\.(css|js|html)$})
end
