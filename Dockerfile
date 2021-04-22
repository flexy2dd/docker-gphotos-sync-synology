FROM gilesknap/gphotos-sync:latest

CMD export PATH=$PATH:$ADDITIONAL_PATH

RUN apt update && apt install -y cron htop nano
#RUN apk update --no-cache && apk add busybox-initscripts
#RUN rc-service crond start && rc-update add crond

# Runtime environment variables
ENV GPHOTOS_PROGRESS=1 \
    GPHOTOS_CRON="*/2 * * * *" \
    #GPHOTOS_ALBUM ALBUM \
    GPHOTOS_LOG_LEVEL="error" \
    #GPHOTOS_LOGFILE LOGFILE \
    #GPHOTOS_COMPARE_FOLDER COMPARE_FOLDER \
    GPHOTOS_START_DATE="" \
    GPHOTOS_END_DATE="" \
    #GPHOTOS_DB_PATH DB_PATH \
    GPHOTOS_ALBUMS_PATH="" \
    GPHOTOS_PHOTOS_PATH="" \
    GPHOTOS_MAX_RETRIES=0 \
    GPHOTOS_MAX_THREADS=0 \
    GPHOTOS_SECRET="" \
    #GPHOTOS_MAX_FILENAME MAX_FILENAME \
    GPHOTOS_FAVOURITES_ONLY=0 \
    #GPHOTOS_FLUSH_INDEX=0 \
    #GPHOTOS_RESCAN=0 \
    GPHOTOS_RETRY_DOWNLOAD=0 \
    GPHOTOS_SKIP_VIDEO=0 \
    GPHOTOS_SKIP_SHARED_ALBUMS=0 \
    GPHOTOS_ALBUM_DATE_BY_FIRST_PHOTO=0 \
    GPHOTOS_USE_FLAT_PATH=0 \
    GPHOTOS_OMIT_ALBUM_DATE=0 \
    GPHOTOS_NEW_TOKEN=0 \
    GPHOTOS_INDEX_ONLY=0 \
    GPHOTOS_SKIP_INDEX=0 \
    GPHOTOS_DO_DELETE=0 \
    GPHOTOS_SKIP_FILES=0 \
    GPHOTOS_SKIP_ALBUMS=0 \
    GPHOTOS_USE_HARDLINKS=0 \
    GPHOTOS_NO_ALBUM_INDEX=0 \
    GPHOTOS_CASE_INSENSITIVE_FS=0 \
    GPHOTOS_ARCHIVED=0

COPY launch.sh /

RUN chmod +x /launch.sh

ENTRYPOINT ["sh","/launch.sh"]
