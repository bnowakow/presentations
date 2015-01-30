require 'tilt'
require 'asciidoctor'
require 'asciidoctor-diagram'

deck2pdf_path = 'deck2pdf/build/distributions/deck2pdf-0.1-SNAPSHOT/bin/deck2pdf'

desc 'Render the slides to dzslides'
task :render, :file do |t, args|
    args.with_defaults(:file => 'slides')
    Asciidoctor.render_file Rake.original_dir + "/#{args['file']}.adoc",
        :in_place => true,
        :safe => :unsafe,
        :backend => 'dzslides',
        :template_dir => 'asciidoctor-backends/slim/'
end

desc 'Render the slides do pdf'
task :pdf, :file do |t, args|
    args.with_defaults(:file => 'slides')
    source_file = Rake.original_dir + "/#{args['file']}"
    Asciidoctor.render_file "#{source_file}.adoc",
        :attributes => 'linkcss datauri',
        :in_place => true,
        :safe => :unsafe,
        :backend => 'dzslides',
        :template_dir => 'asciidoctor-backends/slim/'

    system("#{deck2pdf_path} --profile=dzslides --width=954 --height=714 #{source_file}.html #{source_file}.pdf")
end

task :default => :render do
end
