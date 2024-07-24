# DevOps Challenge

Fork this project and build the infrastructure of this API the way you want, you can use Docker Compose, AWS or any other way you like, the goal here is to analyze your commits to understand the way you work.

You have one week to complete the test, when you're done send an email to [anderson.lima@shawandpartners.com](mailto:anderson.lima@shawandpartners.com)
We will schedule a meeting for you to explain your solution

Tips:

The application runs on port 8888

This app only has two endpoints, the / which returns the following string:

```jsx
{"App Test": "Alive"}
```

And the Healthcheck endpoint that returns the following string:

```jsx
{"Status": "heart beating steady and strong"}
```

Run the application
```jsx
pip install -r src/requirements.txt
cd src
gunicorn --bind 0.0.0.0:8888 wsgi:app
```



Any questions please contact: [anderson.lima@shawandpartners.com](mailto:anderson.lima@shawandpartners.com)


# Modification done by Mohamed Eid ===>

1: added 2 more packages in the requierments.txt ( Werkzeug==2.2.2, gunicorn==20.1.0 ) to fix a flask requierment to run on python 3.12,
    also to be able to run the app using the gunicorn command I had to add gunicorn to the requierments.txt file
2: used a small python-alpine image for faster startup
3: created a Dockerfile to build the app and exposing it's port (8888)
4: created a Docker-compose file to boot up the app for fast local testing