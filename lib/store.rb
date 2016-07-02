class Store
  def self.save_hash(name, hash)
    File.open("db/#{name}.json","w") do |f|
      f.write(JSON.pretty_generate(hash))
    end
  end
end
