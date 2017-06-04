# bloggrails

[![Code Climate](https://codeclimate.com/github/hckhanh/bloggrails/badges/gpa.svg)](https://codeclimate.com/github/hckhanh/bloggrails)

A demo application for Ruby on Rails

## Requisites

* Ruby `2.3.3` or above
* Rails `5.1.1`
* PostgresSQL

## Configuration

To deploy to the VPS server or Heroku, you have to configure these environment variables:

{: .table}

| Variable              | Description                                                                                     |
|-----------------------|-------------------------------------------------------------------------------------------------|
| DATABASE_URL          | Full database url: `postgres://USER_NAME:PASSWORD@HOST_NAME:PORT/DATABASE_NAME`                 |
| RECAPTCHA_SITE_KEY    | Site key from https://www.google.com/recaptcha/admin                                            |
| RECAPTCHA_SECRET_KEY  | Secret key from https://www.google.com/recaptcha/admin                                          |
| CLOUDINARY_API_KEY    | API key from [Cloudinary](http://cloudinary.com/) service                                       |
| CLOUDINARY_API_SECRET | API secret from [Cloudinary](http://cloudinary.com/) service                                    |
| CLOUDINARY_CLOUD_NAME | Cloud name from [Cloudinary](http://cloudinary.com/) service                                    |
| SSL_CERT_FILE         | If you are using Windows, you need to download OpenSSL and set this variable to `cert.pem` file |

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
$ rake db:seed
~~~

> **Note:** `DATABASE_URL` is full url to the database and **it must be set**:
>
> ~~~
> postgres://USER_NAME:PASSWORD@HOST_NAME:PORT/DATABASE_NAME
> ~~~

## Services

{: .table}

| Service    | Description                                                                                                                                                      |
|------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| reCAPTCHA  | To prevent malicious actions from **bad bots**                                                                                                                   |
| Cloudinary | When user create an article, an image need to be attached to the article, this service will store and manage all images and become CDN resource for the website. |
| Heroku     | Server for the application                                                                                                                                       |                                                                                                                                    |

## APIs

API root: `https://bloggrails.herokuapp.com/api`

### Get list of articles

#### Route

~~~
GET /articles?search=string
~~~

##### Parameters

{: .table}

| Parameter | Description                                                                             |
|-----------|-----------------------------------------------------------------------------------------|
| search    | You can search articles by title or content. If it's empty, it will return all articles |
