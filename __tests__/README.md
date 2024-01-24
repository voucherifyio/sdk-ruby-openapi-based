## Introductions

This is the test suite for the Voucherify Ruby SDK, which is based on OpenAPI. 
Instead of using an automatically generated SDK, the test suite was created manually. 
The main reason for this is to ensure that the most crucial parts of the SDK are working impeccably.

## Running tests

We're eagerly advising to run the tests with `Dockerfile` provided in root directory. If You want to run tests locally,
here are the steps You need to follow:

### Requirements 

- all elements described in [main README.md](../README.md) like Ruby and Gem manager
- Voucherify SDK built locally
- rspec installed `(gem install rspec)`

### Running locally

1. Go into `root` directory
2. Follow the steps described in [main README.md](../README.md) for building SDK locally
3. Run `gem install rspec` command
4. Go into `__tests__` directory (You should already be there)
5. Run `rspec ./spec` command

## Contributing

All new tests should be added to `spec` directory. This directory should only contain test suits and minimal logic. 
Place all the advanced in `lib` directory. Maintain the appropriate division of modules and functions and keep the
indispensable global login in the `voucherify_data.rb` singleton. 

**Remember that in current state of tests suite some tests are dependent on each other. All tests are running in alphanumeric order within the `spec` directory.**
