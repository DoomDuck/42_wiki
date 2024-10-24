FROM mediawiki:1.42

COPY ./extensions ./extensions
COPY ./tools ./tools

# Extract extensions 
CMD ["./tools/extract-extensions.sh"]

# Startup script
CMD ["./tools/start.sh"]
