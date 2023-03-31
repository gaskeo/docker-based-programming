FROM node:17-alpine as builder

# INCLUDE react/react-index.Dockerfile

FROM nginx:stable-alpine

# INCLUDE nginx/nginx-index.Dockerfile