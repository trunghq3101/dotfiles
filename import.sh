rm -rf ~/.gnupg
gpg --import ~/gpg-backup/gpg-secret-key-backup.asc
rm ~/.gnupg/trustdb.gpg
gpg --import-ownertrust < ~/gpg-backup/trustdb-backup.txt