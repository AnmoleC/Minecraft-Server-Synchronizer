@echo off
echo "Synchronizing Minecraft World"
git pull
echo "Starting Minecraft server"
java -Xms4096M -Xmx8192M -jar server.jar nogui  
echo "Persisting Minecraft world to GitHub"
git add .
git commit -m "Updating Minecraft world"
git push
pause
