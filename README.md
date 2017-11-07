# secretsStoreExample
An easy way to keep secrets encrypted within in a private repository

Usage:

    $> ./decryptStore.sh
    
asks for a password ('password' in the example) and decrypts the file credentials_store with the defined tool. (Ansible Vault at the moment. To be improved and extended). The filename of the temp decrypted version is set accordingly so that a particular .gitignore entry keeps the file out of any stages or commits.

    $> ./encryptStore.sh

asks for a new password and offers to delete the plain text file at the end.

Things to improve:
* Don't actually write the decrypted version to disk
* Keep the encryption/decryption tool of choice flexible
* Verbose mode 