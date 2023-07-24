# syno_mailplus_ipv6
IPv6 support for MailPlus (Synology MailPlus Server)
# Background
Synology still does not support IPv6 for Synology MailPlus Server. No idea why... It seems to be a much requested feature though. I created a workaround to forward any IPv6 request to IPv4 with socat.
# Installation
- First you need to install the [SynoCommunity as a package source](https://synocommunity.com/#easy-install).
- Next you may install "SynoCli Network Tools".
- Let's open the control panel and choose the Task Scheduler.
- Create a new task (Triggered task/User-defined script).
- Give the task a name, e.g. "Portmapping MailPlus", choose "root" as user and task should be triggered at boot time.
- Copy the text from the socat_Mailplus.sh file to User-defined script.
You are done and can start the task manually or restart the NAS.
# Limitations
* Use it at own's risk (I am not responsible for any issues caused by it).
* I am not a professional programmer. Code might be ugly or strange to some extent, but it works (at least for me). If you have a better/improved version I am interested,





