template '/var/lib/pgsql/data/pg_hba.conf' do
	source 'pg_hba.conf.erb'
	action :create
end

template 'postgresql.conf' do
	source 'postgresql.conf.erb'
	action :create
end
