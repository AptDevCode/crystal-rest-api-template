# crystal-rest-api-template

This repo defines a standard of creating a REST API that interfaces with a relational database.

- It's using the grip-framework to wire up the RESTful endpoints.
- Granite is being used as the ORM.
- Micrate handles database migrations against a Postgres DB.
- Your `.env` file will be loaded via dotenv.
- Hardwire handles the dependency injection!

## Installation

Make sure you have crystal installed on your Linux/MacOS/WSL environment.

Install the shards.

```bash
shards install
```

Create a `.env` file with the DB connection URL. You can copy the `sample.env` file for this.
Modify the `docker-compose.yaml` file with details on your database, or keep it as is.

## Usage

Bring up the Postgres DB using docker-compose.

```bash
docker-compose up
```

Run migrations against your DB.

```bash
./migrations/micrate up
```

Run the application.

```bash
crystal src/main.cr
```

Test it via a `curl` command.

```bash
curl "http://0.0.0.0:4004/"
```

## Development

Use this template to quickly create a REST microservice.

It's crystal. Have fun!

## Contributing

1. Fork it (<https://github.com/your-github-user/crystal-rest-api-template/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Jose Chavez](https://github.com/your-github-user) - creator and maintainer
