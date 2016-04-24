# Refinements

module MyAppPuts
  refine Object do
    private
    def puts(*args)
      args.each { |arg| Kernel::puts("MyApp: #{arg}") }
    end
  end
end

using MyAppPuts
puts "meu debug", "outra string"