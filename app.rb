require 'fileutils'

def create_directory(directory_name)
  Dir.mkdir(directory_name) unless File.exists?(directory_name)
end

def create_file(directory_name, file_name, content)
  File.open("#{directory_name}/#{file_name}", 'w') { |file| file.write(content) }
end

def list_files(directory_name)
  Dir.foreach(directory_name) do |file|
    next if file == '.' || file == '..'
    puts file
  end
end

def delete_file(directory_name, file_name)
  File.delete("#{directory_name}/#{file_name}")
end

# Contoh penggunaan
directory_name = 'my_directory'
file_name = 'my_file.txt'
content = 'Hello, world!'

create_directory(directory_name)
create_file(directory_name, file_name, content)
list_files(directory_name)
delete_file(directory_name, file_name)
list_files(directory_name)
