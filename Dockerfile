FROM mediawiki:1.42

COPY OAuth-extension.tgz ./extensions/

RUN ["tar", "-C", "./extensions", "-xzf", "./extensions/OAuth-extension.tgz"]

RUN ["rm", "./extensions/OAuth-extension.tgz"]
#
# COPY LocalSettings.php .
#
# RUN ["php", "maintenance/run.php", "install"]

COPY start.sh .

CMD ["./start.sh"]
