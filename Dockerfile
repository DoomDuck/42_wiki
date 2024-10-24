FROM mediawiki:1.42

COPY ./extensions ./extensions
COPY ./tools ./tools

# Extract extensions 
RUN ["./tools/extract-extensions.sh"]

# Startup script
CMD ["./tools/start.sh"]
