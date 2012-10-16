#coding: utf-8
require 'gmail' # for more info -> http://dcparker.github.com/ruby-gmail/
require 'readline' # for email confirmation
require 'date'

Signal.trap(:INT){
  puts "logout Gmail ..."
  @gmail.logout if defined? @gmail
  puts "loged out!"
  exit
}

def check_file(filename)
  if File.exist?(filename)
    puts "checked the given file '#{filename}' exists."
  else
    puts "it seems '#{filename}' doesn not exist."
    puts "check if the file really exists on the given path."
    exit
  end
end


# initialize variables
yyyymm = Date.today.strftime("%Y%m")
mmdd   = Date.today.strftime("%m%d")
last_yyyymm = (Date.today - 28).strftime("%Y%m")
is_last_month_report_included = false

USERNAME = "yasulab@gmail.com"
PASSWORD = "YOUR_PASSWORD"

to_addr = "foo@gmail.com"
cc_addr = "bar@gmail.com" # comment out if no co-creators
subject_text = "MAIL TITLE"
body_text = open("./body.txt").read()
path_to_file1 = "./sample.csv"
check_file path_to_file1

#path_to_file2 = "./sample2.csv"
#check_file path_to_file2

if Time.now.day <= 7
  path_to_file3 = "./sample3.csv"
  check_file path_to_file3
  #path_to_file4 = "./sample4.csv"
  #check_file path_to_file4
  is_last_month_report_included = true
end



# login, confirm, then send/cancel and logout
@gmail = Gmail.new(USERNAME, PASSWORD)

puts "Please confirm..."
puts "  [from] #{USERNAME}"
puts "  [to] #{to_addr}"
puts "  [cc] #{cc_addr}" if defined? cc_addr
puts "  [subject] #{subject_text}"
puts "  [body]"
puts body_text
puts "  [file] #{path_to_file1}" if defined? path_to_file1
puts "  [file] #{path_to_file2}" if defined? path_to_file2
if is_last_month_report_included
  puts "  [file] #{path_to_file3}" if defined? path_to_file3
  puts "  [file] #{path_to_file4}" if defined? path_to_file4
end
puts ""

while true
  input = Readline.readline("can I send this?[Y/n] > ")

  if input == 'Y' or input == 'y'
    # send email and quit
    puts "start sending email ..."
    @gmail.deliver do
      to to_addr
      cc cc_addr if defined? cc_addr
      subject subject_text
      body body_text
      add_file path_to_file1 if defined? path_to_file1
      add_file path_to_file2 if defined? path_to_file2
      if is_last_month_report_included
        add_file path_to_file3 if defined? path_to_file3
        add_file path_to_file4 if defined? path_to_file4
      end
    end
    puts "just sent email!"
    puts "check your Gmail 'sent box' for double check :-)"
    @gmail.logout
    break
  elsif input == 'N' or input == 'n'
    # stop sending email and quit
    @gmail.logout
    puts 'stopped sending email and logged out.'
    break
  else
    # do nothing
  end
end
