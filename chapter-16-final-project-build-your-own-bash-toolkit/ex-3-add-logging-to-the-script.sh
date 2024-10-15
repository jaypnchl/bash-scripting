#!/usr/bin/env bash

log_action() {
    action="$1"
    echo "$(date): $action" >> toolkit.log
}

# Example usage in the backup function
backup_files() {
    src="$1"
    dest="$2"
    echo "Backing up $src to $dest"
    rsync -avh "$src" "$dest"
    if [ $? -eq 0 ]; then
        log_action "Backup of $src to $dest successful"
    else
        log_action "Backup of $src to $dest failed"
    fi
}
