passwd="P3t3r456!"

echo "Removing data..."
echo $passwd | sudo -S rm -rf /var/lib/postgres/data
echo $passwd | sudo -S chown postgres:postgres /var/lib/postgres
echo "Initializing DB"
echo $passwd | sudo -S -u postgres initdb -D /var/lib/postgres/data
echo $passwd | sudo -S chown postgres:postgres /var/lib/postgres/data
echo $passwd | sudo -S systemctl start postgresql
echo $passwd | sudo -S systemctl enable postgresql
