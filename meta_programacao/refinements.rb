module AppPuts
  refine Object do
    private
    def puts(*args)
      args.each do |arg|
        Kernel::puts("My App: #{arg}")
      end
    end
  end
end

using AppPuts
puts "Hello", "world"