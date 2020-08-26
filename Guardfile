group :red_green_refactor, halt_on_fail: true do
  guard :rspec, cmd: 'bundle exec rspec' do
    callback(:start_begin) { `bin/rails db:environment:set RAILS_ENV=test` }

    watch('spec/spec_helper.rb')                        { 'spec' }
    watch('config/routes.rb')                           { 'spec/routing' }
    watch('app/controllers/application_controller.rb')  { 'spec/controllers' }
    watch(%r{^spec/.+_spec\.rb$})
    watch(%r{^spec/.+/.+_spec\.rb$})
    watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
    watch(%r{^app/(.*)(\.erb|\.haml|\.slim)$})          { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
    watch(%r{^lib/(.+)\.rb$})                           { |m| "spec/lib/#{m[1]}_spec.rb" }
    watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/requests/#{m[1]}_spec.rb"] }
  end

  guard :rubocop, all_on_start: false, cli: ['--format', 'clang'] do
    watch(%r{^app/.*\.rb$})
    watch(%r{^config/.*\.rb$})
    watch(%r{^lib/.*\.rb$})
    watch(%r{^spec/.*\.rb$})
    watch(%r{^script/.*\.rb$})
  end
end
