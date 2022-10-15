#!/usr/bin/env ruby
#
input_array = ARGV

fname = input_array[0]
fname_fields = fname.split("/")
participant_id = fname_fields[3]
#hpo_path = fname.gsub(/^.*?HPO-CLD/, '')

File.open(fname) { |f|
  counter = 0
  f.each_line { |l|
      if counter > 1
        # puts "\"#{participant_id}\",\"#{hpo_path}\",#{l}"
        puts "\"#{participant_id}\",#{l}"
      end
      counter += 1
  }
}
