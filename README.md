# What tools can help me to detect n+1 queries?

This is an example app to help you test/experiment with the tools to help you detect n+1 queries:

- Bullet
- Prosopite
- NPlusOneControl
- Rails strict_loading!
- Rack mini profiler

## Here is what you can do with this app

- Visit the root path and open the top badge of Rack mini profiler.
- Visit the root path and see the logs to see Bullet and Prosopite in action.
- Run the `PostController` spec to see the NPlusOneControl error.
- Uncomment the `strict_loading!` call on the `PostController ` to see the rails error.
## App Specs

* Ruby version: "3.0.0"