🤖 Dokku-node-red-contrib-chatbot 🚀
===================

A super-charged Docker image to deploy `RedBot <https://github.com/guidone/node-red-contrib-chatbot>`_ to `dokku <https://github.com/dokku/dokku>`_. Now with Python 3.12 and Node.js 20 for maximum awesomeness!

Tech Stack 💻
-------------

* **Base Image**: nikolaik/python-nodejs:python3.12-nodejs20
* **Node-RED**: Latest version
* **Packages**: All packages (node-red-contrib-aws, node-red-contrib-chatbot, etc.) use the latest versions

The following environment variables let you customize your container (it's like magic! ✨):
  - NO_AUTH: Set this if you want to live dangerously and disable all authentication methods
  - AUTH_METHOD: Currently only the 'passwd' based auth is supported (we're working on more options!)
    - When 'passwd' method is chosen, the 'admin' password is magically generated and displayed in the container log
  - AUTH_URL: The HTTP endpoint to authenticate users - if set, AUTH_METHOD is automatically switched to 'http'
  - SECRET: The secret sauce used to encrypt stored credentials - if not set, encryption takes a vacation
  - TITLE: Override the default "Docker node-red" header title with something more exciting!

Want to supercharge your flows? You can add an 'extra_modules.txt' inside '/app/.nodered/' with a list of additional modules to install.

Dokku Setup 🛠️
-------------

When using with dokku, mount your volume with this magical incantation:

::

  dokku storage:mount $APP /var/lib/dokku/data/storage/$APP:/app/.nodered/
  dokku ps:restart $APP

And voilà! Your Node-RED instance will remember all your brilliant flows between restarts! 🧠
