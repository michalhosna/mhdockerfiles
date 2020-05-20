ARG NODE_VERSION
FROM node:${NODE_VERSION}

RUN npm i -g pg@8.2.1

ARG CONTEMBER_CLI_VERSION

RUN npm i -g @contember/cli@${CONTEMBER_CLI_VERSION}

ENTRYPOINT ["npx", "contember"]
