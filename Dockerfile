FROM ghcr.io/openclaw/openclaw:latest

USER root

RUN mkdir -p /root/.openclaw

COPY openclaw.json /root/.openclaw/openclaw.json
COPY auth-profiles.json /root/.openclaw/auth-profiles.json

ENV NODE_OPTIONS=--max-old-space-size=512
