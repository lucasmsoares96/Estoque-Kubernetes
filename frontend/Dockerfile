# Use latest stable channel SDK.
FROM cirrusci/flutter AS build

# Resolve app dependencies.
WORKDIR /app
COPY pubspec.* ./
RUN flutter pub get

# Copy app source code (except anything in .dockerignore) and AOT compile app.
COPY . .
RUN flutter build web

# Build minimal serving image from AOT-compiled `/server`
# and the pre-built AOT-runtime in the `/runtime/` directory of the base image.
FROM nginx
WORKDIR /usr/share/nginx/html
COPY --from=build /app/build/web .
COPY ./get_variables.sh .

CMD [ "./get_variables.sh" ]
