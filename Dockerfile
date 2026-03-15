FROM ghcr.io/openclaw/openclaw:latest

RUN mkdir -p /root/.openclaw
COPY .openclaw/ /root/.openclaw/
