#!/bin/bash

# Set the backup script path
backup_script="/path/to/init_bkp.sh"

# Set the OneDrive folder path
onedrive_folder="/path/to/onedrive/folder"

# Set the cron job command
cron_job="0 4 * * * /bin/bash /path/to/automated_backup.sh"

# Create a temporary file to hold the current crontab entries
tmp_file=$(mktemp)

# Read the current crontab entries into the temporary file
crontab -l > "$tmp_file"

# Add the cron job command to the temporary file
echo "$cron_job" >> "$tmp_file"

# Load the modified crontab file
crontab "$tmp_file"

# Check if the crontab was successfully updated
if [ $? -eq 0 ]; then
  echo "Cron job added successfully."
else
  echo "Failed to add cron job."
fi

# Remove the temporary file
rm "$tmp_file"
