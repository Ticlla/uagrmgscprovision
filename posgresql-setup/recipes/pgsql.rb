execute 'install-postgres' do
        command 'sudo dnf -y install postgresql-server'
end

execute 'clean-directory' do
       command 'sudo rm -rf /var/lib/pgsql/data'
end

execute 'create-db-defaul-initdb' do
    command 'sudo postgresql-setup --initdb'
end

execute 'start-postgres' do
        command 'sudo systemctl start postgresql'
end

execute 'enable-postgresql' do
	command 'sudo systemctl enable postgresql'
end

execute 'delete_user' do
	command ' sudo -u postgres dropuser gcs'
	action :nothing
end

execute 'add_user' do
	command 'sudo -u postgres createuser --interactive -e gcs -s'
	action :nothing
end

execute 'move_pg_hba' do
	command 'sudo cp cookbooks/posgresql-setup/recipes/pg_hba.conf /var/lib/pgsql/data/pg_hba.conf'
end
