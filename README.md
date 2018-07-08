# Installation steps
1. Download oracle instant client basic and odbc packages from - http://www.oracle.com/technetwork/topics/winsoft-085727.html
2. Extract both archives into folder name instantclient_12_2 into github project root directory.
3. Create tnsnames.ora file in extracted folder. Update tnsnames.ora with database configuration as,

KPI_SERVER = 
	(DESCRIPTION = 
		(ADDRESS_LIST = 
			(ADDRESS =
				(COMMUNITY = TCP)
				(PROTOCOL = TCP)
				(HOST = myoraclehostname)
				(PORT = 1521)
			)
		)
	(CONNECT_DATA = (SID = mysid))	
	)

4. Build docker images as,
docker build -t myorainstantcli .
5. Run docker images as,
docker run -d --name myoraclicontainer myorainstantcli
