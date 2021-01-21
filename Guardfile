# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :rspec, spring: 'bin/rails rspec' do
  watch(%r{^app/(.+)\.rb$})                               { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/controllers/application_controller\.rb$}) { 'spec/controllers' }
  watch(%r{^app/controllers/(.+)_controller\.rb$})        { |m| "spec/integration/#{m[1]}_spec.rb" }
  watch(%r{^app/views/(.+)_mailer/.+})                    { |m| "spec/mailers/#{m[1]}_mailer_spec.rb" }
  watch(%r{^lib/(.+)\.rb$})                               { |m| "spec/unit/lib/#{m[1]}_spec.rb" }
  watch(%r{^lib/tasks/(.+)\.rake$})                       { |m| "spec/unit/lib/tasks/#{m[1]}_spec.rb" }
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^spec/spec_helper\.rb$}) { 'spec' }
  watch(%r{^spec/support/.+\.rb}) { 'spec' }
end
