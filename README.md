# To Do List Django's Project

This repo is for create a list for to do, you can add new tasks and create users

## Prerequisites
Install python
```zsh
sudo apt-get install python3
```

Then you can install a virtual environment
```zsh
pip install virtualenv
```

## Installation
1. clone the repository

2. Go to folder in your terminal 

3. Run the command
```zsh
python3 -m venv venv
```

4. Activates the virtual environment
```zsh
source venv/bin/activate
```
If you're a Windows user, activate the server is:
```
venv/Scripts/activate
```

5. Install Django
```
pip install django
```

6. Make migrations
```
python manage.py makemigrations
```

7. Run migrations
```zsh
python manage.py migrate
```

8. Start app base
```zsh
python manage.py startapp base
```

9. Now you can start the server
```zsh
python manage.py runserver
```

## Better Docker
After clone the repo you need crate the Docker image with thw following line:
```
docker build -t todo-list:alpine .
```

Then you can run it
```
docker run --rm --name rodo-alpine -p 8080:8000 todo-list:alpine
```

And congrats you have running the app
