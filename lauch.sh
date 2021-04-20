#!/bin/bash

echo "Starting GPhotos Synch..."

GPHOTOS_OPTS=""

if [ "$GPHOTOS_START_DATE" != "" ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --start-date=$GPHOTOS_START_DATE"
fi

if [ "$GPHOTOS_END_DATE" != "" ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --end-date=$GPHOTOS_END_DATE"
fi

if [ "$GPHOTOS_ALBUMS_PATH" != "" ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --albums-path=$GPHOTOS_ALBUMS_PATH"
fi

if [ "$GPHOTOS_PHOTOS_PATH" != "" ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --photos-path=$GPHOTOS_PHOTOS_PATH"
fi

if [ "$GPHOTOS_MAX_RETRIES" != 0 ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --max-retries=$GPHOTOS_MAX_RETRIES"
fi

if [ "$GPHOTOS_MAX_THREADS" != 0 ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --max-threads=$GPHOTOS_MAX_THREADS"
fi

if [ "$GPHOTOS_FAVOURITES_ONLY" != 0 ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --favourites-only"
fi

if [ "$GPHOTOS_RETRY_DOWNLOAD" != 0 ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --retry-download"
fi

if [ "$GPHOTOS_SKIP_VIDEO" != 0 ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --skip-video"
fi

if [ "$GPHOTOS_SKIP_SHARED_ALBUMS" != 0 ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --skip-shared-albums"
fi

if [ "$GPHOTOS_ALBUM_DATE_BY_FIRST_PHOTO" != 0 ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --album-date-by-first-photo"
fi

if [ "$GPHOTOS_USE_FLAT_PATH" != 0 ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --use-flat-path"
fi

if [ "$GPHOTOS_OMIT_ALBUM_DATE" != 0 ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --omit-album-date"
fi

if [ "$GPHOTOS_NEW_TOKEN" != 0 ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --new-token"
fi

if [ "$GPHOTOS_INDEX_ONLY" != 0 ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --index-only"
fi

if [ "$GPHOTOS_SKIP_INDEX" != 0 ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --skip-index"
fi

if [ "$GPHOTOS_DO_DELETE" != 0 ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --do-delete"
fi

if [ "$GPHOTOS_SKIP_FILES" != 0 ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --skip-files"
fi

if [ "$GPHOTOS_SKIP_ALBUMS" != 0 ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --skip-albums"
fi

if [ "$GPHOTOS_USE_HARDLINKS" != 0 ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --use-hardlinks"
fi

if [ "$GPHOTOS_NO_ALBUM_INDEX" != 0 ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --no-album-index"
fi

if [ "$GPHOTOS_CASE_INSENSITIVE_FS" != 0 ]; then
    GPHOTOS_OPTS="$GPHOTOS_OPTS --case-insensitive-fs"
fi

if [ "$GPHOTOS_ARCHIVED" != 0 ]; then
  GPHOTOS_OPTS="$GPHOTOS_OPTS --archived"
fi

if [ "$GPHOTOS_PROGRESS" != 0 ]; then
  GPHOTOS_OPTS="$GPHOTOS_OPTS --progress"
fi

gphotos-sync $GPHOTOS_OPTS /storage
