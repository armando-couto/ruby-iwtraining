puts [1, 2, 3, 4].inject(0) { |soma, num| soma + num }
puts [1, 2, 3, 4].inject { |soma, num| soma + num }

puts [1, 2, 3, 4].inject(1) { |prod, num| prod * num }
puts [1, 2, 3, 4].inject { |prod, num| prod * num }


puts [1, 2, 3, 4].reduce(:+)
puts [1, 2, 3, 4].reduce(:*)
puts [1, 2, 3, 4].reduce(1, :*)


tools = [
    {
        type: 'language',
        name: 'Ruby',
        runtimes: [
            {name: 'MRI', maintainer: 'Matz'},
            {name: 'mruby', maintainer: 'Matz'},
            {name: 'RubyMotion', maintainer: 'RubyMotion'},
        ]
    },
    {
        type: 'language',
        name: 'JavaScript',
        runtimes: [
            {name: 'V8', maintainer: 'Google'},
            {name: 'Chakra', maintainer: 'Microsoft'}
        ]
    }
]

# {}
# {
#     Ruby: [ {...}, {...}, {...} ],
#     JavaScript: [ {...} ]
# }

puts tools
         .find_all { |tool| tool[:type] == 'language' }
         .inject({}) { |acc, tool|
            unless acc[tool[:name]]
              acc[tool[:name]] = [tool]
            else
              acc[tool[:name]] << tool
            end
            acc
          }
         .inject([]) { |acc, k|
            acc << { language: k[0], runtimes: k[1][0][:runtimes].size }
            acc
         }


puts tools.inject({}) { |acc, tool|
  acc[tool[:name]] = tool[:runtimes].size
  acc
}

