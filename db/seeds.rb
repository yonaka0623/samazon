table_names = %w(major_categories categories products)

table_names.each do |table_name|
  path = Rails.root.join("db", "seeds", Rails.env, "#{table_name}_seeder.rb")
  if File.exist?(path)
    puts "#{table_name}_seeder.rbを適用しています・・・"
    require(path)
  end
end
