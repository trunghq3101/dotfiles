gpg --import gpg/gpg-secret-key-backup.asc
rm ~/.gnupg/trustdb.gpg
gpg --import-ownertrust < gpg/trustdb-backup.txt