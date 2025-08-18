find /home -mindepth 1 -maxdepth 1 -type d -exec sh -c '
for dir do
user=$(basename "$dir")
cp /root/.vimrc "$dir"
chown "$user:$user" "$dir/.vimrc"
done
' sh {} +