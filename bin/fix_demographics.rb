#!/usr/bin/env ruby

require 'csv'

STDIN.each { |l|
  line = l.chomp + ",,,,,,,,,,,"
  num_comma=line.count(',')
  fields = CSV.parse(line)
  row = fields[0]
  row.each { |f|
    if f.nil?
      f = ""
    end
    f.gsub!(/^no$/i, 'NO')
    f.gsub!(/^yes$/i, 'NO')
  }
  if row[10].to_s.empty?
    row[10] = "NO"
  end
  if row[12].to_s.empty?
    row[12] = "NO"
  end
  puts row[0,13].to_csv
}
