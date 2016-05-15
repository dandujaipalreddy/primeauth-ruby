# Primeauth Ruby Library 

#### Installation <br> 
<hr>
Run the following command on your device  <br>
`gem install Primeauth` <br>
or Add this to the Gemfile<br>
`gem Primeauth` <br>
and <br>
`bundle install` <br>

####Creating an Auth
<hr>
To create an Auth just call the following method <br>
` Primeauth.createAuth()` <br>
It takes the following parameters  <br>
1. `email` - Email of the user to whom auth must be created, Send none if mobile is in use.<br>
2. `mobile` - Mobile number of the user to whom auth must be created, Send none if email is in use.<br>
3. `ip` - IP address of the requesting user - This can be grabbed by using
<br>`request.env["HTTP_X_FORWARDED_FOR"]` and if you're on heroku, use this to get the real IP  
`ip_add =  request.env["HTTP_X_FORWARDED_FOR"]`
`ip = my_string[/[^,]+/]` <br>
4. `token` - API KEY, can be obtained from the client dashboard <br>
5. `secret` - API Secret, can be obtatined from client dashboard <br>
6. `comments` - If you want to add something that the users should see like a message, add it here. <br>

#####USAGE: 

`var1 = Primeauth.createAuth("hi@primeauth.com","none","127.0.0.1","123","2134","This is a test Request")`<br
<br>
Store the response in a variable because this is used to check the response of the auth <br>

####Checking Auth response <br>
<hr>
To check an Auth response, just call the following method 
`Primeauth.checkAuth()` <br>
It takes the following parameters <br>
1. `auth_id` - the variable in which we stored our previous response <br>
2. `token` - API KEY, can be obtained from the client dashboard <br>
3. `secret` - API Secret, can be obtatined from client dashboard <br>

#####USAGE: 

`var2 = Primeauth.checkAuth(var1,"123","2134")`

##### Going forward
<hr>
`if (var2 == 1)`<br>
   ` // user is authenticated, do whatever you want here.`<br>
  `else` <br>
   ` //user is not authenticated, do whatever you want here.`<br>
 `end`<br>

###Support
<hr>
For any issues, don't hesistate to contact support@primeauth.com <br>

###Contributing
<hr>
Please feel free to fork it or contribute to the repository. Create a pull request and we'll be more than happy to review :-) 




