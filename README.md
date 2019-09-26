# Grammable
This instagram-like app was built on Rails using a test-driven process. While going through the process of building this application, I learned how to use RSpec and the `factory_bot_rails` gem to produce a testing framework. Before creating any routes and controller actions, I fleshed out tests I intended to pass, and ensured they failed (red). Then I proceeded to writing the controller actions and hooking up the routing to allow the application to work, checking each action in testing to ensure the tests passed for that action (green). And then I would go back and (refactor) to clean up any repetition and inefficient areas of code.

I learned, through this process, the importance and convenience of writing tests for functionality, which will expose regressive bugs introduced when new features are added to the application.

**Rails Version: 5.2.3**

**Ruby Version: 2.5.3**

**Key Gems Used:**
* `bootstrap`
* `carrierwave`
* `devise`
* `figaro`
* `fog-aws`
* `jquery-rails`
* `jquery-ui-rails`
* `simple-form`
* `rspec-rails`
* `factory_bot_rails`
* `rubocop`
