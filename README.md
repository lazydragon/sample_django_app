# Welcome to sample django app with TiDB
This sample uses the polls example of [django tutorial](https://docs.djangoproject.com/en/3.2/intro/tutorial01/)

# Prerequisites
- Install [docker](https://docs.docker.com/engine/install/)
- Install docker [compose](https://docs.docker.com/compose/install/)
- Running [TiDB](https://pingcap.com/) cluster

# Run the sample
Go to a save directory and run the following commands
```
git clone https://github.com/lazydragon/sample_django_app.git 
cd sample_django_app 
docker-compose build
docker-compose up -d
docker-compose run web python manage.py migrate
docker-compose run web python manage.py createsuperuser --username=admin --email='' 
```
Visit your sample website 
- Admin page: http://localhost:8000/admin/
- Polls page: http://localhost:8000/polls/

# Customize TiDB host
By default, the settings assume TiDB is running on localhost:4000. To modify, update file `.env-local` with the correct DATABASE_HOST
