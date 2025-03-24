# Start your Docker containers:
cd Frank2TrinoExample
docker-compose up -d

# Check that all containers are running:
docker ps

# You should see your PostgreSQL, MongoDB, and Trino containers running.

If you previously created data in the memory connector (which is volatile), you'll need to recreate it:

# For Windows, run your init-memory-data.bat file
init-memory-data.bat


# Start the Frank!Framework:
restart.bat

Check that everything is working by accessing:




If anything isn't working as expected, check the logs:
# For Docker containers
docker logs frank2trinoexample-trino-1
docker logs frank2trinoexample-postgres-1
docker logs frank2trinoexample-mongodb-1

# For Frank!Framework
# Check the logs in the logs directory of your Frank!Framework installation
Remember that each time you restart your system, you'll need to repeat these steps to get your development environment back up and running.