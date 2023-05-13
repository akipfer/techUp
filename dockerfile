# Create a Jekyll container from ana ruby alpine image
#Em 05-2023, suporte de git.pages precisa jekyll 3.0(ruby-alpine) 
FROM ruby:2.7-alpine3.15

#Add dependencias do jekyll do alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

#Update the ruby and bundler and install jekyll
RUN gem update bundler && gem install bundler jekyll
