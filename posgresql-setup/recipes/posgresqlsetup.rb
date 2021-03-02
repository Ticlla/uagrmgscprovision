
execute 'listing posgresql' do
    command 'dnf module list postgresql'
end


execute 'enabling version 12' do
    command 'sudo dnf module enable postgresql:12 -y'
end


execute 'Installing posgrsql server' do
    command 'sudo dnf install postgresql-server -y'
end


execute 'set up initdb' do
    command 'ssudo postgresql-setup --initdb'
end


execute 'starting posgres service' do
    command 'sudo systemctl start postgresql'
end

execute 'enable posgresql' do
    command 'sudo systemctl enable postgresql'
end