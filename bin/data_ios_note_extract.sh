#!/bin/bash

TITLE=$*
NOTESDB=/var/mobile/Library/Notes/notes.sqlite
sqlite3 $NOTESDB "SELECT ZNOTEBODY.ZCONTENT FROM ZNOTEBODY  INNER JOIN ZNOTE ON ZNOTE.Z_PK = ZNOTEBODY.ZOWNER WHERE ZTITLE LIKE '%$TITLE%' LIMIT 1"