# bloggrails

[![Code Climate](https://codeclimate.com/github/hckhanh/bloggrails/badges/gpa.svg)](https://codeclimate.com/github/hckhanh/bloggrails)

A demo application for Ruby on Rails

## Requisites

* Ruby `2.3.3` or above
* Rails `5.1.1`

## Configuration

To deploy to the VPS server or Heroku, you have to configure these environment vairables:

| Variable              | Description                                                                     |
|-----------------------|---------------------------------------------------------------------------------|
| DATABASE_URL          | Full database url: `postgres://USER_NAME:PASSWORD@HOST_NAME:PORT/DATABASE_NAME` |
| RECAPTCHA_SITE_KEY    | Site key from https://www.google.com/recaptcha/admin                            |
| RECAPTCHA_SECRET_KEY  | Secret key from https://www.google.com/recaptcha/admin                          |
| CLOUDINARY_API_KEY    | API key from [Cloudinary](http://cloudinary.com/) service                       |
| CLOUDINARY_API_SECRET | API secret from [Cloudinary](http://cloudinary.com/) service                    |
| CLOUDINARY_CLOUD_NAME | Cloud name from [Cloudinary](http://cloudinary.com/) service                    |                  |
{: .table}

## Database creation

Login to server and run:

~~~
$ rake db:migrate
~~~

## Database initialization

In the source folder, I already put a file `db/data.pgsql`.
This file contains the sample data for the application.

To seed the data for database, run:

~~~
$ psql DATABASE_URL < db/data.pgsql
~~~

> **Note:** `DATABASE_URL` is full url to the database:
>
> ~~~
> postgres://USER_NAME:PASSWORD@HOST_NAME:PORT/DATABASE_NAME
> ~~~

## Services

| Service    | Description                                                                                                                                                      |
|------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| reCAPTCHA  | To prevent malicious actions from **bad bots**                                                                                                                   |
| Cloudinary | When user create an article, an image need to be attached to the article, this service will store and manage all images and become CDN resource for the website. |
| Heroku     | Server for the application                                                                                                                                       |                                                                                                                                    |
{: .table}
