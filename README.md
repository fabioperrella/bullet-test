# README

This is a project to test the [bullet gem](https://github.com/flyerhzm/bullet)

## Instructions

Execute the following commands to prepare and run the application:

```bash
bundle install
bundle exec rake db:migrate db:seed
```

## Detecting N+1 queries

### In the browser

Start rails server:

```bash
bundle exec rails s
```

Then, open http://localhost:3000 in your browser. An alert message will pop up with the error.

The error is also logged at `log/bullet.log`

### In tests

Run the following test:

```bash
bundle exec rspec spec/requests/posts_controller_spec.rb
```

The error is also logged at `log/bullet.log`

### An example of controller test that Bullet can't detect N+1

Run the following test:

```bash
bundle exec spec/controllers/posts_controller_spec.rb
```

### An example of view test that Bullet can't detect N+1

Run the following test:

```bash
bundle exec spec/views/posts/index.html.erb_spec.rb
```
