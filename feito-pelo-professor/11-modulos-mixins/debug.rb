module Debug

  def who_am_i?
    puts "#{self.class.name} (id: #{self.object_id})"
  end

end
