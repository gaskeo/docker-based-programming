WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY --from=builder /build .

ENTRYPOINT ["nginx", "-g", "daemon off;"]