# INCLUDE react/package.json.Dockerfile

RUN mkdir -p public
# INCLUDE react/public/index.html.Dockerfile
# INCLUDE react/public/robots.txt.Dockerfile

RUN mkdir -p src
# INCLUDE react/src/index.js.Dockerfile
# INCLUDE react/src/index.css.Dockerfile


# INCLUDE react/src/app.js.Dockerfile
# INCLUDE react/src/app.css.Dockerfile


RUN mkdir -p src/about
# INCLUDE react/src/about/about.js.Dockerfile
# INCLUDE react/src/about/about.css.Dockerfile


RUN mkdir -p src/header
# INCLUDE react/src/header/header.js.Dockerfile
# INCLUDE react/src/header/header.css.Dockerfile


RUN mkdir -p src/usage
# INCLUDE react/src/usage/usage.js.Dockerfile
# INCLUDE react/src/usage/usage.css.Dockerfile

RUN npm build