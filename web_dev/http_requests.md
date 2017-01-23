The most common HTTP status code is 200 OK. This is the code given when everything has gone ok.
301 Moved Permanently is also very common, your browser should automatically redirect to the proper location.
401 Unauthorized is generally a request for authentication. Usually, you'd be prompted to log in.
403 Forbidden is similar to 401, except whatever the request was is forbidden, the server understood the request and is telling you that it is forbidden. Authentication doesn't help.
404 Not Found is when nothing was found at the location you requested, this is common to actually see in your browser.
500 Internal Server Error just means there was some sort of error, on the server side.
------------------------------------------------------------------------------------------------
A get request is requesting a specific resource without side affects. A get request should be static, a server should respond identically, or nearly identically, to the same get request. Repeating a get query should not have side-effects.

A POST request submits data for some sort of manipulation or processing. A POST allows you to send information, without needing to send that information in the URL.

A POST request should be used to make something happen, a GET request should be used for times when you're only getting data.
------------------------------------------------------------------------------------------------
A cookie saves useful data about you for use on websites. Cookies can save your session as logged in, or your language preferences, or other preferences. Cookies can improve user experience by quite a bit. The cookies that get saved are determined by the websites themselves. 