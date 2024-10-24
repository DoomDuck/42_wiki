FROM mediawiki:1.42

COPY ./extensions ./extensions

# Extract pluggins 
# TODO: Make a script to install plugins
RUN ["tar", "-C", "./extensions", "-xzf", "./extensions/OAuth.tgz"]
RUN ["tar", "-C", "./extensions", "-xzf", "./extensions/WSOAuth.tgz"]
RUN ["tar", "-C", "./extensions", "-xzf", "./extensions/PluggableAuth.tgz"]
RUN rm ./extensions/*.tgz

# Startup script
COPY start.sh .
CMD ["./start.sh"]
