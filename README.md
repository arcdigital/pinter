# pinter
Alpine-based Docker image for running [laravel/pint](https://github.com/laravel/pint).

This docker image is automatically updated when a new version of `laravel/pint` or the PHP 8.2 docker container is released.

## Usage

By default pinter will run with the `--test` flag:
```shell
$ docker run -it --rm -v $PWD:/workspace arcdigital/pinter
```

You can run it without the `--test` flag:
```shell
$ docker run -it --rm -v $PWD:/workspace arcdigital/pinter ""
```

You can pass options such as a `--preset` (the default is `laravel`):

```shell
$ docker run -it --rm -v $PWD:/workspace arcdigital/pinter --preset psr12
```

## Development
Build the container:

```shell
$ docker build -t pinter .
```

Run the locally built container:

```shell
$ docker run -it --rm -v $PWD:/workspace pinter
```

## License
See the [LICENSE](LICENSE) file.

## Inspiration
This project takes inspiration from [syncloudsoftech/pinter](https://github.com/syncloudsoftech/pinter).