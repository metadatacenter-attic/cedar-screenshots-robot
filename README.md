--------------------
Automating Screenshots using Python Robot Framework
--------------------
The protocol is followed from https://blog.codeship.com/automating-screenshots-in-documentation/ with some variations.
Specifically, the PhantomJS Headless Browser is no longer supported and you need to use the ChromeDriver for simulating the demo in Google Chrome.

Steps to run the Python Robot Framework:
- Download the ChromeDriver Executable for Mac -- https://sites.google.com/a/chromium.org/chromedriver/getting-started
- Put the ChromeDriver Executable in the $PATH variable
- Install the following Python libraries: image, robotframework, robotframework-selenium2library, robotframework-selenium2screenshots

(e.g. pip install robotframework --user, or pip install -r requirements.txt --user)

- Load the scripts in a "automate" folder and run

~/Library/Python/2.7/bin/robot automate/

--------------------
@TODO:
- Sometimes the tests fail since the login cookie/session is stored in the Chrome Simulation Window and the Login Page redirects to the main Dashboard ... Not sure how to deal with that
- Crop screenshots using CSS 

