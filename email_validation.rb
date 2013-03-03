# Sam wants to select a username in order to register on a website.
#
# The rules for selecting a username are:
#
# 1. The minimum length of the username must be 5 characters and the maximum may be 10.
# 2. It should contain at least one letter from A-Z
# 3. It should contain at least one digit from 0-9
# 4. It should contain at least one character from amongst @#*=
# 5. It should not contain any spaces
#
# Suppose the following usernames are supplied to the program:
# 1234@a
# ABC3a#@
# 1Ac@
# ABC 3a#@
#
# Then the output should be:
# FAIL
# PASS
# FAIL
# FAIL

test_emails = []
4.times {test_emails << gets.chop}

test_emails.each do |email|
  # java regexp ((?=.*[0-9])(?=.*[A-Z])(?=.*[@#*=])(?=[\\S]+$).{5,10})
  regexp = /(\w*)\s(\w*)/ # rewrite
  if email.match regexp
    puts "PASS"
  else
    puts "FAIL"
  end
end
