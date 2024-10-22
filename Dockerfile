FROM mediawiki:1.42

COPY OAuth-extension.tgz ./extensions/

RUN ["tar", "-C", "./extensions", "-xzf", "./extensions/OAuth-extension.tgz"]

RUN ["rm", "./extensions/OAuth-extension.tgz"]
