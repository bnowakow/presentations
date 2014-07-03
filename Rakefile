require 'tilt'
require 'asciidoctor'
 
desc 'Render the slides to dzslides'
task :render do
    Asciidoctor.render_file Rake.original_dir + '/slides.adoc',
        :in_place => true,
        :backend => 'dzslides',
        :template_dir => 'asciidoctor-backends/slim/'
end
 
task :default => :render do
end
