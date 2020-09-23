FROM alpine:latest

RUN apk add --no-cache npm
RUN npm install -g browser-sync

WORKDIR /root/dev/pods/devbox-mermaid/node_modules/mermaid/dist

EXPOSE 3000

CMD ["browser-sync", "start", "--server", "--no-open", "--files", "*.html"]
