class Test

  def one
    @var = 1
    two
  end

  def two
    puts @var
  end

end

t = Test.new
t.one

# t -> t.class -> Test
# self <- t
# @var
