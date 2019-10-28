@echo off
echo "Synchronizing Minecraft World"
git pull
echo "Starting Minecraft server"
java -Xmx1024M -Xms1024M -jar server.jar nogui 
#set /p input="To close server enter q"
echo "Persisting Minecraft world to GitHub"
git add .
git commit -m "Updating Minecraft world"
git push
