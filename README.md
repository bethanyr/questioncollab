user = User.create(:email => "admin@ticketee.com",
:password => "password")
user.confirm!
user2 = User.create(:email => "admin2@ticketee.com",
:password => "password")
user2.confirm!
user3 = User.create(:email => "admin3@ticketee.com",
:password => "password")
user3.confirm!
user4 = User.create(:email => "admin4@ticketee.com",
:password => "password")
user4.confirm!

![ScreenShot](https://raw.github.com/jzhang20133/questioncollab/master/Screenshot1.png)
![ScreenShot](https://raw.github.com/jzhang20133/questioncollab/master/Screenshot2.png)
