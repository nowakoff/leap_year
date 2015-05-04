require 'date'

# I am using regural expresion to set the format of data

re1='((?:(?:[1]{1}\\d{1}\\d{1}\\d{1})|(?:[2]{1}\\d{3}))(?:[0]?[1-9]|[1][012])(?:(?:[0-2]?\\d{1})|(?:[3][01]{1})))(?![\\d])'	# YYYYMMDD 1
re=(re1)
m=Regexp.new(re,Regexp::IGNORECASE);

# First date 

puts "Welcome in Sunday's counter. If you want to know how many wonderful sundays you had or will have you are in the right place. Input first date in format YYYYMMDD, you have to use 8 numbers. Don't input spaces. For example for 25th November 2000 you would input: '20001125' "
date_string = gets
date_string

# I am validating user input (string which states for first date)

until m.match(date_string) && (date_string.length == 9) do
   puts "Wrong format, input date once again in YYYYMMDD format "
  date_string=gets
end

# Second date

puts "Input second date in YYYYMMDD format " 
date_string2 = gets

# I am validating user input (string which states for second date)

until m.match(date_string2) && (date_string2.length == 9) do
  puts "Wrong format, input date once again in YYYYMMDD format "
  date_string=gets
end

# I am parsing my string to date. I want to know amount of days between two dates.

change_string_to_date = Date.parse(date_string) 

# I am parsing my second string to date. I want to know amount of days between two dates.

change_string_to_date2 = Date.parse(date_string2) 
 
#I want to know the day of the week in my first date

get_day_name = change_string_to_date.strftime('%A')
get_day_name

# I counting days between teo dates 

days_between_two_dates = change_string_to_date2 - change_string_to_date

# I am changing my variable to positive integer  

get_number = days_between_two_dates.to_i.abs

# I created algorithm and I am using a switch case to execute it  

case get_day_name
when "Sunday"
  num_of_sundays = (get_number + 1)/7
when  "Monday"

  num_of_sundays=  (get_number - 5)/7
when   "Tuesday"

  num_of_sundays = (get_number -4 )/7
when   "Wednesday"

  num_of_sundays=(get_number -3)/7
when   "Thursday"

  num_of_sundays=(get_number -2)/7
when   "Friday"

  num_of_sundays=(get_number -1)/7
when   "Saturday"

  num_of_sundays=(get_number)/7
end
 
if num_of_sundays <= 0
   puts "  Result: 0 Sundays"
elsif num_of_sundays == 1
   puts " Result: #{num_of_sundays} Sunday "
else 
   puts " Result: #{num_of_sundays} Sundays "
end
