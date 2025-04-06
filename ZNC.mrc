##################################################################
#                   mIRC ZNC Script - v0.2                       #
#                                                                #
#     ███████╗███╗   ██╗ ██████╗                                 #
#     ╚══███╔╝████╗  ██║██╔════╝                                 #
#       ███╔╝ ██╔██╗ ██║██║                                      #
#      ███╔╝  ██║╚██╗██║██║                                      #
#     ███████╗██║ ╚████║╚██████╗                                 #
#     ╚══════╝╚═╝  ╚═══╝ ╚═════╝                                 #
#                     ███╗   ███╗███████╗███╗   ██╗██╗   ██╗     #
#                     ████╗ ████║██╔════╝████╗  ██║██║   ██║     #
#                     ██╔████╔██║█████╗  ██╔██╗ ██║██║   ██║     #
#                     ██║╚██╔╝██║██╔══╝  ██║╚██╗██║██║   ██║     #
#                     ██║ ╚═╝ ██║███████╗██║ ╚████║╚██████╔╝     #
#                     ╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝      #
#                                                                #
#                   by ZarTek-Creole - Since 2018                #
##################################################################
; Description : Script mIRC pour gérer ZNC avec un menu intuitif 
; Auteur      : ZarTek-Creole (https://github.com/ZarTek-Creole)
; Contact     : Creole@Gmail.com
; Version     : 0.2 (Ajout de la fermeture auto de *status après 10s)
; Date        : 2018-2025
; Licence     : MIT License - Libre d'utilisation et de modification
; Dépôt       : https://github.com/ZarTek-Creole/ZNC-mIRC-Script
##################################################################

; Alias pour envoyer une commande à *status et fermer la fenêtre après 30 secondes
alias znc_cmd {
  /znc_cmd $1-
  timerZNCclose off
  timerZNCclose 1 10 close -m *status
}

menu channel {
  .-[ ZNC ]-
}

menu query {
  .-[ ZNC ]-
}

menu nicklist {
  .-[ ZNC ]-
}

menu status {
  .-[ ZNC ]-
}

menu status,channel,nicklist,query {
  .-[ ZNC ]-
  .Channels
  ..EnableChan <#chans>:/znc_cmd EnableChan $$?="Channel to enable?"
  ..DisableChan <#chans>:/znc_cmd DisableChan $$?="Channel to disable?"
  ..Topics - Show topics in all your channels:/znc_cmd Topics 
  .Buffer
  ..ClearAllQueryBuffers      - Clear the query buffers:/znc_cmd ClearAllQueryBuffers 
  ..ClearAllChannelBuffers    - Clear the channel buffers :/znc_cmd ClearAllChannelBuffers 
  ..-
  ..ClearBuffer <#chan|query> - Clear the specified buffer:/znc_cmd ClearBuffer $$?="<#chan|query>"
  ..ClearBuffer $active       - Clear the specified buffer of $active:/znc_cmd ClearBuffer $active
  ..-
  ..PlayBuffer <#chan|query>  - Play back the specified buffer :/znc_cmd PlayBuffer $$?="<#chan|query>"
  ..PlayBuffer $active        - Play back the specified buffer of $active :/znc_cmd PlayBuffer $active
  ..-
  ..SetBuffer <#chan|query> [linecount] - Set the buffer count :/znc_cmd SetBuffer $$?="<#chan|query> [linecount]"
  ..SetBuffer $active [linecount] - Set the buffer count of $active:/znc_cmd SetBuffer $active $$?="[linecount]"
  .Modules
  ..ListMods:/znc_cmd ListMods
  ..ListAvailMods:/znc_cmd ListAvailMods
  .All Modules
  ..Global modules
  ...adminlog - Log ZNC events to file and/or syslog.
  ....LoadMod :/znc_cmd LoadMod adminlog | msg *adminlog help
  ....UnLoadMod :/znc_cmd UnLoadMod adminlog
  ....Help :/msg *adminlog Help

  ...block_motd - Block the MOTD from IRC so it's not sent to your client(s).
  ....LoadMod :/znc_cmd LoadMod block_motd | msg *block_motd help
  ....UnLoadMod :/znc_cmd UnLoadMod block_motd
  ....Help :/msg *block_motd Help

  ...blockuser - Block certain users from logging in.
  ....LoadMod :/znc_cmd LoadMod blockuser | msg *blockuser help
  ....UnLoadMod :/znc_cmd UnLoadMod blockuser
  ....Help :/msg *blockuser Help

  ...certauth - Allow users to authenticate via SSL client certificates.
  ....LoadMod :/znc_cmd LoadMod certauth | msg *certauth help
  ....UnLoadMod :/znc_cmd UnLoadMod certauth
  ....Help :/msg *certauth Help

  ...chansaver - Keep config up-to-date when user joins/parts.
  ....LoadMod :/znc_cmd LoadMod chansaver | msg *chansaver help
  ....UnLoadMod :/znc_cmd UnLoadMod chansaver
  ....Help :/msg *chansaver Help

  ...fail2ban - Block IPs for some time after a failed login.
  ....LoadMod :/znc_cmd LoadMod fail2ban | msg *fail2ban help
  ....UnLoadMod :/znc_cmd UnLoadMod fail2ban
  ....Help :/msg *fail2ban Help

  ...identfile - Write the ident of a user to a file when they are trying to connect.
  ....LoadMod :/znc_cmd LoadMod identfile | msg *identfile help
  ....UnLoadMod :/znc_cmd UnLoadMod identfile
  ....Help :/msg *identfile Help

  ...imapauth - Allow users to authenticate via IMAP.
  ....LoadMod :/znc_cmd LoadMod imapauth | msg *imapauth help
  ....UnLoadMod :/znc_cmd UnLoadMod imapauth
  ....Help :/msg *imapauth Help

  ...lastseen - Collects data about when a user last logged in.
  ....LoadMod :/znc_cmd LoadMod lastseen | msg *lastseen help
  ....UnLoadMod :/znc_cmd UnLoadMod lastseen
  ....Help :/msg *lastseen Help

  ...log - Write IRC logs.
  ....LoadMod :/znc_cmd LoadMod log | msg *log help
  ....UnLoadMod :/znc_cmd UnLoadMod log
  ....Help :/msg *log Help

  ...notify_connect - Notifies all admin users when a client connects or disconnects.
  ....LoadMod :/znc_cmd LoadMod notify_connect | msg *notify_connect help
  ....UnLoadMod :/znc_cmd UnLoadMod notify_connect
  ....Help :/msg *notify_connect Help

  ...partyline - Internal channels and queries for users connected to znc.
  ....LoadMod :/znc_cmd LoadMod partyline | msg *partyline help
  ....UnLoadMod :/znc_cmd UnLoadMod partyline
  ....Help :/msg *partyline Help

  ...webadmin - Web based administration module.
  ....LoadMod :/znc_cmd LoadMod webadmin | msg *webadmin help
  ....UnLoadMod :/znc_cmd UnLoadMod webadmin
  ....Help :/msg *webadmin Help

  ..User modules
  ...alias - Provides bouncer-side command alias support.
  ....LoadMod :/znc_cmd LoadMod alias | msg *alias help
  ....UnLoadMod :/znc_cmd UnLoadMod alias
  ....Help :/msg *alias Help

  ...autoattach - Reattaches you to channels on activity.
  ....LoadMod :/znc_cmd LoadMod autoattach | msg *autoattach help
  ....UnLoadMod :/znc_cmd UnLoadMod autoattach
  ....Help :/msg *autoattach Help

  ...autoreply - Reply to queries when you are away
  ....LoadMod :/znc_cmd LoadMod autoreply | msg *autoreply help
  ....UnLoadMod :/znc_cmd UnLoadMod autoreply
  ....Help :/msg *autoreply Help

  ...block_motd - Block the MOTD from IRC so it's not sent to your client(s).
  ....LoadMod :/znc_cmd LoadMod block_motd | msg *block_motd help
  ....UnLoadMod :/znc_cmd UnLoadMod block_motd
  ....Help :/msg *block_motd Help

  ...bouncedcc - Bounces DCC transfers through ZNC instead of sending them directly to the user.
  ....LoadMod :/znc_cmd LoadMod bouncedcc | msg *bouncedcc help
  ....UnLoadMod :/znc_cmd UnLoadMod bouncedcc
  ....Help :/msg *bouncedcc Help

  ...buffextras - Add joins, parts etc. to the playback buffer
  ....LoadMod :/znc_cmd LoadMod buffextras | msg *buffextras help
  ....UnLoadMod :/znc_cmd UnLoadMod buffextras
  ....Help :/msg *buffextras Help

  ...cert - Use a ssl certificate to connect to a server
  ....LoadMod :/znc_cmd LoadMod cert | msg *cert help
  ....UnLoadMod :/znc_cmd UnLoadMod cert
  ....Help :/msg *cert Help

  ...chansaver - Keep config up-to-date when user joins/parts.
  ....LoadMod :/znc_cmd LoadMod chansaver | msg *chansaver help
  ....UnLoadMod :/znc_cmd UnLoadMod chansaver
  ....Help :/msg *chansaver Help

  ...clearbufferonmsg - Clear all channel and query buffers whenever the user does something
  ....LoadMod :/znc_cmd LoadMod clearbufferonmsg | msg *clearbufferonmsg help
  ....UnLoadMod :/znc_cmd UnLoadMod clearbufferonmsg
  ....Help :/msg *clearbufferonmsg Help

  ...clientnotify - Notifies you when another IRC client logs into or out of your account. Configurable.
  ....LoadMod :/znc_cmd LoadMod clientnotify | msg *clientnotify help
  ....UnLoadMod :/znc_cmd UnLoadMod clientnotify
  ....Help :/msg *clientnotify Help

  ...controlpanel - Dynamic configuration through IRC. Allows editing only yourself if you're not ZNC admin.
  ....LoadMod :/znc_cmd LoadMod controlpanel | msg *controlpanel help
  ....UnLoadMod :/znc_cmd UnLoadMod controlpanel
  ....Help :/msg *controlpanel Help

  ...ctcpflood - Don't forward CTCP floods to clients
  ....LoadMod :/znc_cmd LoadMod ctcpflood | msg *ctcpflood help
  ....UnLoadMod :/znc_cmd UnLoadMod ctcpflood
  ....Help :/msg *ctcpflood Help

  ...dcc - This module allows you to transfer files to and from ZNC
  ....LoadMod :/znc_cmd LoadMod dcc | msg *dcc help
  ....UnLoadMod :/znc_cmd UnLoadMod dcc
  ....Help :/msg *dcc Help

  ...disconkick - Kicks the client from all channels when the connection to the IRC server is lost
  ....LoadMod :/znc_cmd LoadMod disconkick | msg *disconkick help
  ....UnLoadMod :/znc_cmd UnLoadMod disconkick
  ....Help :/msg *disconkick Help

  ...flooddetach - Detach channels when flooded
  ....LoadMod :/znc_cmd LoadMod flooddetach | msg *flooddetach help
  ....UnLoadMod :/znc_cmd UnLoadMod flooddetach
  ....Help :/msg *flooddetach Help

  ...listsockets - List active sockets
  ....LoadMod :/znc_cmd LoadMod listsockets | msg *listsockets help
  ....UnLoadMod :/znc_cmd UnLoadMod listsockets
  ....Help :/msg *listsockets Help

  ...log - Write IRC logs.
  ....LoadMod :/znc_cmd LoadMod log | msg *log help
  ....UnLoadMod :/znc_cmd UnLoadMod log
  ....Help :/msg *log Help

  ...missingmotd - Sends 422 to clients when they login
  ....LoadMod :/znc_cmd LoadMod missingmotd | msg *missingmotd help
  ....UnLoadMod :/znc_cmd UnLoadMod missingmotd
  ....Help :/msg *missingmotd Help

  ...notes - Keep and replay notes
  ....LoadMod :/znc_cmd LoadMod notes | msg *notes help
  ....UnLoadMod :/znc_cmd UnLoadMod notes
  ....Help :/msg *notes Help

  ...perform - Keeps a list of commands to be executed when ZNC connects to IRC.
  ....LoadMod :/znc_cmd LoadMod perform | msg *perform help
  ....UnLoadMod :/znc_cmd UnLoadMod perform
  ....Help :/msg *perform Help

  ...raw - View all of the raw traffic
  ....LoadMod :/znc_cmd LoadMod raw | msg *raw help
  ....UnLoadMod :/znc_cmd UnLoadMod raw
  ....Help :/msg *raw Help

  ...send_raw - Lets you send some raw IRC lines as/to someone else
  ....LoadMod :/znc_cmd LoadMod send_raw | msg *send_raw help
  ....UnLoadMod :/znc_cmd UnLoadMod send_raw
  ....Help :/msg *send_raw Help

  ...shell - Gives shell access. Only ZNC admins can use it.
  ....LoadMod :/znc_cmd LoadMod shell | msg *shell help
  ....UnLoadMod :/znc_cmd UnLoadMod shell
  ....Help :/msg *shell Help

  ...webadmin - Web based administration module.
  ....LoadMod :/znc_cmd LoadMod webadmin | msg *webadmin help
  ....UnLoadMod :/znc_cmd UnLoadMod webadmin
  ....Help :/msg *webadmin Help

  ..Network modules
  ...alias - Provides bouncer-side command alias support.
  ....LoadMod :/znc_cmd LoadMod alias | msg *alias help
  ....UnLoadMod :/znc_cmd UnLoadMod alias
  ....Help :/msg *alias Help

  ...autoattach - Reattaches you to channels on activity.
  ....LoadMod :/znc_cmd LoadMod autoattach | msg *autoattach help
  ....UnLoadMod :/znc_cmd UnLoadMod autoattach
  ....Help :/msg *autoattach Help

  ...autocycle - Rejoins channels to gain Op if you're the only user left
  ....LoadMod :/znc_cmd LoadMod autocycle | msg *autocycle help
  ....UnLoadMod :/znc_cmd UnLoadMod autocycle
  ....Help :/msg *autocycle Help

  ...autoop - Auto op the good people
  ....LoadMod :/znc_cmd LoadMod autoop | msg *autoop help
  ....UnLoadMod :/znc_cmd UnLoadMod autoop
  ....Help :/msg *autoop Help

  ...autoreply - Reply to queries when you are away
  ....LoadMod :/znc_cmd LoadMod autoreply | msg *autoreply help
  ....UnLoadMod :/znc_cmd UnLoadMod autoreply
  ....Help :/msg *autoreply Help

  ...autovoice - Auto voice the good people
  ....LoadMod :/znc_cmd LoadMod autovoice | msg *autovoice help
  ....UnLoadMod :/znc_cmd UnLoadMod autovoice
  ....Help :/msg *autovoice Help

  ...awaystore - Adds auto-away with logging, useful when you use ZNC from different locations
  ....LoadMod :/znc_cmd LoadMod awaystore | msg *awaystore help
  ....UnLoadMod :/znc_cmd UnLoadMod awaystore
  ....Help :/msg *awaystore Help

  ...block_motd - Block the MOTD from IRC so it's not sent to your client(s).
  ....LoadMod :/znc_cmd LoadMod block_motd | msg *block_motd help
  ....UnLoadMod :/znc_cmd UnLoadMod block_motd
  ....Help :/msg *block_motd Help

  ...buffextras - Add joins, parts etc. to the playback buffer
  ....LoadMod :/znc_cmd LoadMod buffextras | msg *buffextras help
  ....UnLoadMod :/znc_cmd UnLoadMod buffextras
  ....Help :/msg *buffextras Help

  ...cert - Use a ssl certificate to connect to a server
  ....LoadMod :/znc_cmd LoadMod cert | msg *cert help
  ....UnLoadMod :/znc_cmd UnLoadMod cert
  ....Help :/msg *cert Help

  ...chansaver - Keep config up-to-date when user joins/parts.
  ....LoadMod :/znc_cmd LoadMod chansaver | msg *chansaver help
  ....UnLoadMod :/znc_cmd UnLoadMod chansaver
  ....Help :/msg *chansaver Help

  ...crypt - Encryption for channel/private messages
  ....LoadMod :/znc_cmd LoadMod crypt | msg *crypt help
  ....UnLoadMod :/znc_cmd UnLoadMod crypt
  ....Help :/msg *crypt Help

  ...fish - FiSH encryption for channel/private messages
  ....LoadMod :/znc_cmd LoadMod fish | msg *fish help
  ....UnLoadMod :/znc_cmd UnLoadMod fish
  ....Help :/msg *fish Help

  ...keepnick - Keep trying for your primary nick
  ....LoadMod :/znc_cmd LoadMod keepnick | msg *keepnick help
  ....UnLoadMod :/znc_cmd UnLoadMod keepnick
  ....Help :/msg *keepnick Help

  ...kickrejoin - Autorejoin on kick
  ....LoadMod :/znc_cmd LoadMod kickrejoin | msg *kickrejoin help
  ....UnLoadMod :/znc_cmd UnLoadMod kickrejoin
  ....Help :/msg *kickrejoin Help

  ...log - Write IRC logs.
  ....LoadMod :/znc_cmd LoadMod log | msg *log help
  ....UnLoadMod :/znc_cmd UnLoadMod log
  ....Help :/msg *log Help

  ...modules_online - Make ZNC's *modules to be "online".
  ....LoadMod :/znc_cmd LoadMod modules_online | msg *modules_online help
  ....UnLoadMod :/znc_cmd UnLoadMod modules_online
  ....Help :/msg *modules_online Help

  ...nickserv - Auths you with NickServ
  ....LoadMod :/znc_cmd LoadMod nickserv | msg *nickserv help
  ....UnLoadMod :/znc_cmd UnLoadMod nickserv
  ....Help :/msg *nickserv Help

  ...perform - Keeps a list of commands to be executed when ZNC connects to IRC.
  ....LoadMod :/znc_cmd LoadMod perform | msg *perform help
  ....UnLoadMod :/znc_cmd UnLoadMod perform
  ....Help :/msg *perform Help

  ...q - Auths you with QuakeNet's Q bot.
  ....LoadMod :/znc_cmd LoadMod q | msg *q help
  ....UnLoadMod :/znc_cmd UnLoadMod q
  ....Help :/msg *q Help

  ...raw - View all of the raw traffic
  ....LoadMod :/znc_cmd LoadMod raw | msg *raw help
  ....UnLoadMod :/znc_cmd UnLoadMod raw
  ....Help :/msg *raw Help

  ...route_replies - Send replies (e.g. to /who) to the right client only
  ....LoadMod :/znc_cmd LoadMod route_replies | msg *route_replies help
  ....UnLoadMod :/znc_cmd UnLoadMod route_replies
  ....Help :/msg *route_replies Help

  ...sample - To be used as a sample for writing modules
  ....LoadMod :/znc_cmd LoadMod sample | msg *sample help
  ....UnLoadMod :/znc_cmd UnLoadMod sample
  ....Help :/msg *sample Help

  ...sasl - Adds support for sasl authentication capability to authenticate to an IRC server
  ....LoadMod :/znc_cmd LoadMod sasl | msg *sasl help
  ....UnLoadMod :/znc_cmd UnLoadMod sasl
  ....Help :/msg *sasl Help

  ...savebuff - Stores channel and query buffers to disk, encrypted
  ....LoadMod :/znc_cmd LoadMod savebuff | msg *savebuff help
  ....UnLoadMod :/znc_cmd UnLoadMod savebuff
  ....Help :/msg *savebuff Help

  ...schat - Secure cross platform chat system
  ....LoadMod :/znc_cmd LoadMod schat | msg *schat help
  ....UnLoadMod :/znc_cmd UnLoadMod schat
  ....Help :/msg *schat Help

  ...simple_away - This module will automatically set you away on IRC while you are disconnected from the bouncer.
  ....LoadMod :/znc_cmd LoadMod simple_away | msg *simple_away help
  ....UnLoadMod :/znc_cmd UnLoadMod simple_away
  ....Help :/msg *simple_away Help

  ...stickychan - configless sticky chans, keeps you there very stickily even
  ....LoadMod :/znc_cmd LoadMod stickychan | msg *stickychan help
  ....UnLoadMod :/znc_cmd UnLoadMod stickychan
  ....Help :/msg *stickychan Help

  ...watch - Copy activity from a specific user into a separate window
  ....LoadMod :/znc_cmd LoadMod watch | msg *watch help
  ....UnLoadMod :/znc_cmd UnLoadMod watch
  ....Help :/msg *watch Help

  ..Global modules
  ...adminlog - Log ZNC events to file and/or syslog.
  ....LoadMod :/znc_cmd LoadMod adminlog | msg *adminlog help
  ....UnLoadMod :/znc_cmd UnLoadMod adminlog
  ....Help :/msg *adminlog Help

  ...block_motd - Block the MOTD from IRC so it's not sent to your client(s).
  ....LoadMod :/znc_cmd LoadMod block_motd | msg *block_motd help
  ....UnLoadMod :/znc_cmd UnLoadMod block_motd
  ....Help :/msg *block_motd Help

  ...blockuser - Block certain users from logging in.
  ....LoadMod :/znc_cmd LoadMod blockuser | msg *blockuser help
  ....UnLoadMod :/znc_cmd UnLoadMod blockuser
  ....Help :/msg *blockuser Help

  ...certauth - Allow users to authenticate via SSL client certificates.
  ....LoadMod :/znc_cmd LoadMod certauth | msg *certauth help
  ....UnLoadMod :/znc_cmd UnLoadMod certauth
  ....Help :/msg *certauth Help

  ...chansaver - Keep config up-to-date when user joins/parts.
  ....LoadMod :/znc_cmd LoadMod chansaver | msg *chansaver help
  ....UnLoadMod :/znc_cmd UnLoadMod chansaver
  ....Help :/msg *chansaver Help

  ...fail2ban - Block IPs for some time after a failed login.
  ....LoadMod :/znc_cmd LoadMod fail2ban | msg *fail2ban help
  ....UnLoadMod :/znc_cmd UnLoadMod fail2ban
  ....Help :/msg *fail2ban Help

  ...identfile - Write the ident of a user to a file when they are trying to connect.
  ....LoadMod :/znc_cmd LoadMod identfile | msg *identfile help
  ....UnLoadMod :/znc_cmd UnLoadMod identfile
  ....Help :/msg *identfile Help

  ...imapauth - Allow users to authenticate via IMAP.
  ....LoadMod :/znc_cmd LoadMod imapauth | msg *imapauth help
  ....UnLoadMod :/znc_cmd UnLoadMod imapauth
  ....Help :/msg *imapauth Help

  ...lastseen - Collects data about when a user last logged in.
  ....LoadMod :/znc_cmd LoadMod lastseen | msg *lastseen help
  ....UnLoadMod :/znc_cmd UnLoadMod lastseen
  ....Help :/msg *lastseen Help

  ...log - Write IRC logs.
  ....LoadMod :/znc_cmd LoadMod log | msg *log help
  ....UnLoadMod :/znc_cmd UnLoadMod log
  ....Help :/msg *log Help

  ...notify_connect - Notifies all admin users when a client connects or disconnects.
  ....LoadMod :/znc_cmd LoadMod notify_connect | msg *notify_connect help
  ....UnLoadMod :/znc_cmd UnLoadMod notify_connect
  ....Help :/msg *notify_connect Help

  ...partyline - Internal channels and queries for users connected to znc
  ....LoadMod :/znc_cmd LoadMod partyline | msg *partyline help
  ....UnLoadMod :/znc_cmd UnLoadMod partyline
  ....Help :/msg *partyline Help

  ...webadmin - Web based administration module.
  ....LoadMod :/znc_cmd LoadMod webadmin | msg *webadmin help
  ....UnLoadMod :/znc_cmd UnLoadMod webadmin
  ....Help :/msg *webadmin Help

  ..User modules
  ...alias - Provides bouncer-side command alias support.
  ....LoadMod :/znc_cmd LoadMod alias | msg *alias help
  ....UnLoadMod :/znc_cmd UnLoadMod alias
  ....Help :/msg *alias Help

  ...autoattach - Reattaches you to channels on activity.
  ....LoadMod :/znc_cmd LoadMod autoattach | msg *autoattach help
  ....UnLoadMod :/znc_cmd UnLoadMod autoattach
  ....Help :/msg *autoattach Help

  ...autoreply - Reply to queries when you are away
  ....LoadMod :/znc_cmd LoadMod autoreply | msg *autoreply help
  ....UnLoadMod :/znc_cmd UnLoadMod autoreply
  ....Help :/msg *autoreply Help

  ...block_motd - Block the MOTD from IRC so it's not sent to your client(s).
  ....LoadMod :/znc_cmd LoadMod block_motd | msg *block_motd help
  ....UnLoadMod :/znc_cmd UnLoadMod block_motd
  ....Help :/msg *block_motd Help

  ...bouncedcc - Bounces DCC transfers through ZNC instead of sending them directly to the user.
  ....LoadMod :/znc_cmd LoadMod bouncedcc | msg *bouncedcc help
  ....UnLoadMod :/znc_cmd UnLoadMod bouncedcc
  ....Help :/msg *bouncedcc Help

  ...buffextras - Add joins, parts etc. to the playback buffer
  ....LoadMod :/znc_cmd LoadMod buffextras | msg *buffextras help
  ....UnLoadMod :/znc_cmd UnLoadMod buffextras
  ....Help :/msg *buffextras Help

  ...cert - Use a ssl certificate to connect to a server
  ....LoadMod :/znc_cmd LoadMod cert | msg *cert help
  ....UnLoadMod :/znc_cmd UnLoadMod cert
  ....Help :/msg *cert Help

  ...chansaver - Keep config up-to-date when user joins/parts.
  ....LoadMod :/znc_cmd LoadMod chansaver | msg *chansaver help
  ....UnLoadMod :/znc_cmd UnLoadMod chansaver
  ....Help :/msg *chansaver Help

  ...clearbufferonmsg - Clear all channel and query buffers whenever the user does something
  ....LoadMod :/znc_cmd LoadMod clearbufferonmsg | msg *clearbufferonmsg help
  ....UnLoadMod :/znc_cmd UnLoadMod clearbufferonmsg
  ....Help :/msg *clearbufferonmsg Help

  ...clientnotify - Notifies you when another IRC client logs into or out of your account. Configurable.
  ....LoadMod :/znc_cmd LoadMod clientnotify | msg *clientnotify help
  ....UnLoadMod :/znc_cmd UnLoadMod clientnotify
  ....Help :/msg *clientnotify Help

  ...controlpanel - Dynamic configuration through IRC. Allows editing only yourself if you're not ZNC admin.
  ....LoadMod :/znc_cmd LoadMod controlpanel | msg *controlpanel help
  ....UnLoadMod :/znc_cmd UnLoadMod controlpanel
  ....Help :/msg *controlpanel Help

  ...ctcpflood - Don't forward CTCP floods to clients
  ....LoadMod :/znc_cmd LoadMod ctcpflood | msg *ctcpflood help
  ....UnLoadMod :/znc_cmd UnLoadMod ctcpflood
  ....Help :/msg *ctcpflood Help

  ...dcc - This module allows you to transfer files to and from ZNC
  ....LoadMod :/znc_cmd LoadMod dcc | msg *dcc help
  ....UnLoadMod :/znc_cmd UnLoadMod dcc
  ....Help :/msg *dcc Help

  ...disconkick - Kicks the client from all channels when the connection to the IRC server is lost
  ....LoadMod :/znc_cmd LoadMod disconkick | msg *disconkick help
  ....UnLoadMod :/znc_cmd UnLoadMod disconkick
  ....Help :/msg *disconkick Help

  ...flooddetach - Detach channels when flooded
  ....LoadMod :/znc_cmd LoadMod flooddetach | msg *flooddetach help
  ....UnLoadMod :/znc_cmd UnLoadMod flooddetach
  ....Help :/msg *flooddetach Help

  ...listsockets - List active sockets
  ....LoadMod :/znc_cmd LoadMod listsockets | msg *listsockets help
  ....UnLoadMod :/znc_cmd UnLoadMod listsockets
  ....Help :/msg *listsockets Help

  ...log - Write IRC logs.
  ....LoadMod :/znc_cmd LoadMod log | msg *log help
  ....UnLoadMod :/znc_cmd UnLoadMod log
  ....Help :/msg *log Help

  ...missingmotd - Sends 422 to clients when they login
  ....LoadMod :/znc_cmd LoadMod missingmotd | msg *missingmotd help
  ....UnLoadMod :/znc_cmd UnLoadMod missingmotd
  ....Help :/msg *missingmotd Help

  ...notes - Keep and replay notes
  ....LoadMod :/znc_cmd LoadMod notes | msg *notes help
  ....UnLoadMod :/znc_cmd UnLoadMod notes
  ....Help :/msg *notes Help

  ...perform - Keeps a list of commands to be executed when ZNC connects to IRC.
  ....LoadMod :/znc_cmd LoadMod perform | msg *perform help
  ....UnLoadMod :/znc_cmd UnLoadMod perform
  ....Help :/msg *perform Help

  ...raw - View all of the raw traffic
  ....LoadMod :/znc_cmd LoadMod raw | msg *raw help
  ....UnLoadMod :/znc_cmd UnLoadMod raw
  ....Help :/msg *raw Help

  ...send_raw - Lets you send some raw IRC lines as/to someone else
  ....LoadMod :/znc_cmd LoadMod send_raw | msg *send_raw help
  ....UnLoadMod :/znc_cmd UnLoadMod send_raw
  ....Help :/msg *send_raw Help

  ...shell - Gives shell access. Only ZNC admins can use it.
  ....LoadMod :/znc_cmd LoadMod shell | msg *shell help
  ....UnLoadMod :/znc_cmd UnLoadMod shell
  ....Help :/msg *shell Help

  ...webadmin - Web based administration module.
  ....LoadMod :/znc_cmd LoadMod webadmin | msg *webadmin help
  ....UnLoadMod :/znc_cmd UnLoadMod webadmin
  ....Help :/msg *webadmin Help

  ..Network modules
  ...alias - Provides bouncer-side command alias support.
  ....LoadMod :/znc_cmd LoadMod alias | msg *alias help
  ....UnLoadMod :/znc_cmd UnLoadMod alias
  ....Help :/msg *alias Help

  ...autoattach - Reattaches you to channels on activity.
  ....LoadMod :/znc_cmd LoadMod autoattach | msg *autoattach help
  ....UnLoadMod :/znc_cmd UnLoadMod autoattach
  ....Help :/msg *autoattach Help

  ...autocycle - Rejoins channels to gain Op if you're the only user left
  ....LoadMod :/znc_cmd LoadMod autocycle | msg *autocycle help
  ....UnLoadMod :/znc_cmd UnLoadMod autocycle
  ....Help :/msg *autocycle Help

  ...autoop - Auto op the good people
  ....LoadMod :/znc_cmd LoadMod autoop | msg *autoop help
  ....UnLoadMod :/znc_cmd UnLoadMod autoop
  ....Help :/msg *autoop Help

  ...autoreply - Reply to queries when you are away
  ....LoadMod :/znc_cmd LoadMod autoreply | msg *autoreply help
  ....UnLoadMod :/znc_cmd UnLoadMod autoreply
  ....Help :/msg *autoreply Help

  ...autovoice - Auto voice the good people
  ....LoadMod :/znc_cmd LoadMod autovoice | msg *autovoice help
  ....UnLoadMod :/znc_cmd UnLoadMod autovoice
  ....Help :/msg *autovoice Help


  ...awaystore - Adds auto-away with logging, useful when you use ZNC from different locations
  ....LoadMod :/znc_cmd LoadMod awaystore | msg *awaystore help
  ....UnLoadMod :/znc_cmd UnLoadMod awaystore
  ....Help :/msg *awaystore Help

  ...block_motd - Block the MOTD from IRC so it's not sent to your client(s).
  ....LoadMod :/znc_cmd LoadMod block_motd | msg *block_motd help
  ....UnLoadMod :/znc_cmd UnLoadMod block_motd
  ....Help :/msg *block_motd Help

  ...buffextras - Add joins, parts etc. to the playback buffer
  ....LoadMod :/znc_cmd LoadMod buffextras | msg *buffextras help
  ....UnLoadMod :/znc_cmd UnLoadMod buffextras
  ....Help :/msg *buffextras Help

  ...cert - Use a ssl certificate to connect to a server
  ....LoadMod :/znc_cmd LoadMod cert | msg *cert help
  ....UnLoadMod :/znc_cmd UnLoadMod cert
  ....Help :/msg *cert Help

  ...chansaver - Keep config up-to-date when user joins/parts.
  ....LoadMod :/znc_cmd LoadMod chansaver | msg *chansaver help
  ....UnLoadMod :/znc_cmd UnLoadMod chansaver
  ....Help :/msg *chansaver Help

  ...crypt - Encryption for channel/private messages
  ....LoadMod :/znc_cmd LoadMod crypt | msg *crypt help
  ....UnLoadMod :/znc_cmd UnLoadMod crypt
  ....Help :/msg *crypt Help

  ...fish - FiSH encryption for channel/private messages
  ....LoadMod :/znc_cmd LoadMod fish | msg *fish help
  ....UnLoadMod :/znc_cmd UnLoadMod fish
  ....Help :/msg *fish Help

  ...keepnick - Keep trying for your primary nick
  ....LoadMod :/znc_cmd LoadMod keepnick | msg *keepnick help
  ....UnLoadMod :/znc_cmd UnLoadMod keepnick
  ....Help :/msg *keepnick Help

  ...kickrejoin - Autorejoin on kick
  ....LoadMod :/znc_cmd LoadMod kickrejoin | msg *kickrejoin help
  ....UnLoadMod :/znc_cmd UnLoadMod kickrejoin
  ....Help :/msg *kickrejoin Help

  ...log - Write IRC logs.
  ....LoadMod :/znc_cmd LoadMod log | msg *log help
  ....UnLoadMod :/znc_cmd UnLoadMod log
  ....Help :/msg *log Help

  ...modules_online - Make ZNC's *modules to be "online".
  ....LoadMod :/znc_cmd LoadMod modules_online | msg *modules_online help
  ....UnLoadMod :/znc_cmd UnLoadMod modules_online
  ....Help :/msg *modules_online Help

  ...nickserv - Auths you with NickServ
  ....LoadMod :/znc_cmd LoadMod nickserv | msg *nickserv help
  ....UnLoadMod :/znc_cmd UnLoadMod nickserv
  ....Help :/msg *nickserv Help

  ...perform - Keeps a list of commands to be executed when ZNC connects to IRC.
  ....LoadMod :/znc_cmd LoadMod perform | msg *perform help
  ....UnLoadMod :/znc_cmd UnLoadMod perform
  ....Help :/msg *perform Help

  ...q - Auths you with QuakeNet's Q bot.
  ....LoadMod :/znc_cmd LoadMod q | msg *q help
  ....UnLoadMod :/znc_cmd UnLoadMod q
  ....Help :/msg *q Help

  ...raw - View all of the raw traffic
  ....LoadMod :/znc_cmd LoadMod raw | msg *raw help
  ....UnLoadMod :/znc_cmd UnLoadMod raw
  ....Help :/msg *raw Help

  ...route_replies - Send replies (e.g. to /who) to the right client only
  ....LoadMod :/znc_cmd LoadMod route_replies | msg *route_replies help
  ....UnLoadMod :/znc_cmd UnLoadMod route_replies
  ....Help :/msg *route_replies Help

  ...sample - To be used as a sample for writing modules
  ....LoadMod :/znc_cmd LoadMod sample | msg *sample help
  ....UnLoadMod :/znc_cmd UnLoadMod sample
  ....Help :/msg *sample Help

  ...sasl - Adds support for sasl authentication capability to authenticate to an IRC server
  ....LoadMod :/znc_cmd LoadMod sasl | msg *sasl help
  ....UnLoadMod :/znc_cmd UnLoadMod sasl
  ....Help :/msg *sasl Help

  ...savebuff - Stores channel and query buffers to disk, encrypted
  ....LoadMod :/znc_cmd LoadMod savebuff | msg *savebuff help
  ....UnLoadMod :/znc_cmd UnLoadMod savebuff
  ....Help :/msg *savebuff Help

  ...schat - Secure cross platform chat system
  ....LoadMod :/znc_cmd LoadMod schat | msg *schat help
  ....UnLoadMod :/znc_cmd UnLoadMod schat
  ....Help :/msg *schat Help

  ...simple_away - This module will automatically set you away on IRC while you are disconnected from the bouncer.
  ....LoadMod :/znc_cmd LoadMod simple_away | msg *simple_away help
  ....UnLoadMod :/znc_cmd UnLoadMod simple_away
  ....Help :/msg *simple_away Help

  ...stickychan - configless sticky chans, keeps you there very stickily even
  ....LoadMod :/znc_cmd LoadMod stickychan | msg *stickychan help
  ....UnLoadMod :/znc_cmd UnLoadMod stickychan
  ....Help :/msg *stickychan Help

  ...watch - Copy activity from a specific user into a separate window     
  ....LoadMod :/znc_cmd LoadMod watch | msg *watch help
  ....UnLoadMod :/znc_cmd UnLoadMod watch
  ....Help :/msg *watch Help

  .Server
  ..AddServer <host> [[+]port] [pass]:/znc_cmd AddServer $$?="<host> [[+]port] [pass]"
  ..DelServer <host> [port] [pass]:/znc_cmd DelServer $$?="<host> [port] [pass]"
  ..Jump:/znc_cmd Jump
  ..Disconnect:/znc_cmd Disconnect
  ..Connect:/znc_cmd Connect
  .Network
  ..AddNetwork <name>:/znc_cmd AddNetwork $$?="Name of new network?"
  ..DelNetwork <name>:/znc_cmd DelNetwork $$?="Name of remove network?"
  ..ListNetworks:/znc_cmd ListNetworks
  ..JumpNetwork <network>:/znc_cmd JumpNetwork $$?="Jump to another network (Alternatively, you can connect to ZNC several times, using `user/network` as username)"
  .Servers
  ..ListServers:/znc_cmd ListServers
  .MOTD
  ..ShowMOTD - Show ZNC's message of the day:/znc_cmd ShowMOTD
  ..SetMOTD <message> - Set ZNC's message of the day:/znc_cmd SetMOTD $$?="Message?"
  ..AddMOTD <message> - Append <message> to ZNC's MOTD:/znc_cmd AddMOTD $$?="Message?"
  ..ClearMOTD - Clear ZNC's MOTD:/znc_cmd ClearMOTD
  .-
  .SaveConfig - Save the current settings to disk:/znc_cmd SaveConfig
  .Rehash - Reload znc.conf from disk:/znc_cmd Rehash
  .-
  .ListUsers - List all ZNC users and their connection status:/znc_cmd ListUsers
  .ListAllUserNetworks - List all ZNC users and their networks:/znc_cmd ListAllUserNetworks
  .-
  .Traffic - Show basic traffic stats for all ZNC users:/znc_cmd Traffic 
  .Uptime:/znc_cmd Uptime
  .Help:/znc_cmd help
  .Version:/znc_cmd Version
}
