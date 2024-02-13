# How to Manage Code Efficiently





## 🔄 Alternative ways for installing a gem

To build the Ruby code into a gem:

```shell
gem build VoucherifySdk.gemspec
```

Then either install the gem locally:

```shell
gem install ./VoucherifySdk-1.0.0.gem
```

(for development, run `gem install --dev ./VoucherifySdk-1.0.0.gem` to install the development dependencies)

Add this to the Gemfile:

```shell
gem 'VoucherifySdk', '~> 1.0.0'
```

Then install dependencies with bundler

```shell
bundle install
```

Finally, exec script with bundler:

```shell
bundle exec ruby example.rb
```

### 📦 Install from Git

You could use the GitHub repository (https://github.com/voucherifyio/voucherify-js-sdk) for installing SDK gem by adding it to the `Gemfile`

```shell
gem 'VoucherifySdk', :git => 'https://github.com/voucherifyio/voucherify-js-sdk.git', branch: 'main'
```

Then install dependencies with bundler

```shell
bundle install
```

Finally, exec script with bundler:

```shell
bundle exec ruby example.rb
```

