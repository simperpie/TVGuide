@ECHO OFF
cd /d C:\xampp\htdocs\Projects\TVGuide
cd C:\xampp\htdocs\Projects\TVGuide
php tempest.php engine=Generate tempconfig=simper.config.xml createinvxmlgz=on
copy "C:\xampp\htdocs\Projects\TVGuide\tempest_config\epg\simper_epg.xml.gz" ""C:\xampp\htdocs\Projects\TVGuide\simper_epg.xml.gz""
git pull
git add .
git commit -m "Automated commit"
git push
PAUSE
