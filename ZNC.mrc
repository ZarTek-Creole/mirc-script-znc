##################################################
;                                                                         
; Title : Menu ZNC                                          
;                                                                         
; Script : znc.mrc for mirc support ZNC
;
; Version : 0.1                      
;                                         
; Auteur : ZarTek ( ARTiS Family - Creole@Gmail.com )
;
; Date : 2018
;
#################################################
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
  ..EnableChan <#chans>:/msg *status EnableChan $$?="Channel to enable?"
  ..DisableChan <#chans>:/msg *status DisableChan $$?="Channel to disable?"
  ..Topics - Show topics in all your channels:/msg *status Topics 
  .Buffer
  ..ClearAllQueryBuffers      - Clear the query buffers:/msg *status ClearAllQueryBuffers 
  ..ClearAllChannelBuffers    - Clear the channel buffers :/msg *status ClearAllChannelBuffers 
  ..-
  ..ClearBuffer <#chan|query> - Clear the specified buffer:/msg *status ClearBuffer $$?="<#chan|query>"
  ..ClearBuffer $active       - Clear the specified buffer of $active:/msg *status ClearBuffer $active
  ..-
  ..PlayBuffer <#chan|query>  - Play back the specified buffer :/msg *status PlayBuffer $$?="<#chan|query>"
  ..PlayBuffer $active        - Play back the specified buffer of $active :/msg *status PlayBuffer $active
  ..-
  ..SetBuffer <#chan|query> [linecount] - Set the buffer count :/msg *status SetBuffer $$?="<#chan|query> [linecount]"
  ..SetBuffer $active [linecount] - Set the buffer count of $active:/msg *status SetBuffer $active $$?="[linecount]"
  .Modules
  ..ListMods:/msg *status ListMods
  ..ListAvailMods:/msg *status ListAvailMods
  .All Modules
  ..Global modules
  ...adminlog - Log ZNC events to file and/or syslog.
  ....LoadMod :/msg *status LoadMod adminlog | msg *adminlog help
  ....UnLoadMod :/msg *status UnLoadMod adminlog
  ....Help :/msg *adminlog Help

  ...block_motd - Block the MOTD from IRC so it's not sent to your client(s).
  ....LoadMod :/msg *status LoadMod block_motd | msg *block_motd help
  ....UnLoadMod :/msg *status UnLoadMod block_motd
  ....Help :/msg *block_motd Help

  ...blockuser - Block certain users from logging in.
  ....LoadMod :/msg *status LoadMod blockuser | msg *blockuser help
  ....UnLoadMod :/msg *status UnLoadMod blockuser
  ....Help :/msg *blockuser Help

  ...certauth - Allow users to authenticate via SSL client certificates.
  ....LoadMod :/msg *status LoadMod certauth | msg *certauth help
  ....UnLoadMod :/msg *status UnLoadMod certauth
  ....Help :/msg *certauth Help

  ...chansaver - Keep config up-to-date when user joins/parts.
  ....LoadMod :/msg *status LoadMod chansaver | msg *chansaver help
  ....UnLoadMod :/msg *status UnLoadMod chansaver
  ....Help :/msg *chansaver Help

  ...fail2ban - Block IPs for some time after a failed login.
  ....LoadMod :/msg *status LoadMod fail2ban | msg *fail2ban help
  ....UnLoadMod :/msg *status UnLoadMod fail2ban
  ....Help :/msg *fail2ban Help

  ...identfile - Write the ident of a user to a file when they are trying to connect.
  ....LoadMod :/msg *status LoadMod identfile | msg *identfile help
  ....UnLoadMod :/msg *status UnLoadMod identfile
  ....Help :/msg *identfile Help

  ...imapauth - Allow users to authenticate via IMAP.
  ....LoadMod :/msg *status LoadMod imapauth | msg *imapauth help
  ....UnLoadMod :/msg *status UnLoadMod imapauth
  ....Help :/msg *imapauth Help

  ...lastseen - Collects data about when a user last logged in.
  ....LoadMod :/msg *status LoadMod lastseen | msg *lastseen help
  ....UnLoadMod :/msg *status UnLoadMod lastseen
  ....Help :/msg *lastseen Help

  ...log - Write IRC logs.
  ....LoadMod :/msg *status LoadMod log | msg *log help
  ....UnLoadMod :/msg *status UnLoadMod log
  ....Help :/msg *log Help

  ...notify_connect - Notifies all admin users when a client connects or disconnects.
  ....LoadMod :/msg *status LoadMod notify_connect | msg *notify_connect help
  ....UnLoadMod :/msg *status UnLoadMod notify_connect
  ....Help :/msg *notify_connect Help

  ...partyline - Internal channels and queries for users connected to znc.
  ....LoadMod :/msg *status LoadMod partyline | msg *partyline help
  ....UnLoadMod :/msg *status UnLoadMod partyline
  ....Help :/msg *partyline Help

  ...webadmin - Web based administration module.
  ....LoadMod :/msg *status LoadMod webadmin | msg *webadmin help
  ....UnLoadMod :/msg *status UnLoadMod webadmin
  ....Help :/msg *webadmin Help

  ..User modules
  ...alias - Provides bouncer-side command alias support.
  ....LoadMod :/msg *status LoadMod alias | msg *alias help
  ....UnLoadMod :/msg *status UnLoadMod alias
  ....Help :/msg *alias Help

  ...autoattach - Reattaches you to channels on activity.
  ....LoadMod :/msg *status LoadMod autoattach | msg *autoattach help
  ....UnLoadMod :/msg *status UnLoadMod autoattach
  ....Help :/msg *autoattach Help

  ...autoreply - Reply to queries when you are away
  ....LoadMod :/msg *status LoadMod autoreply | msg *autoreply help
  ....UnLoadMod :/msg *status UnLoadMod autoreply
  ....Help :/msg *autoreply Help

  ...block_motd - Block the MOTD from IRC so it's not sent to your client(s).
  ....LoadMod :/msg *status LoadMod block_motd | msg *block_motd help
  ....UnLoadMod :/msg *status UnLoadMod block_motd
  ....Help :/msg *block_motd Help

  ...bouncedcc - Bounces DCC transfers through ZNC instead of sending them directly to the user.
  ....LoadMod :/msg *status LoadMod bouncedcc | msg *bouncedcc help
  ....UnLoadMod :/msg *status UnLoadMod bouncedcc
  ....Help :/msg *bouncedcc Help

  ...buffextras - Add joins, parts etc. to the playback buffer
  ....LoadMod :/msg *status LoadMod buffextras | msg *buffextras help
  ....UnLoadMod :/msg *status UnLoadMod buffextras
  ....Help :/msg *buffextras Help

  ...cert - Use a ssl certificate to connect to a server
  ....LoadMod :/msg *status LoadMod cert | msg *cert help
  ....UnLoadMod :/msg *status UnLoadMod cert
  ....Help :/msg *cert Help

  ...chansaver - Keep config up-to-date when user joins/parts.
  ....LoadMod :/msg *status LoadMod chansaver | msg *chansaver help
  ....UnLoadMod :/msg *status UnLoadMod chansaver
  ....Help :/msg *chansaver Help

  ...clearbufferonmsg - Clear all channel and query buffers whenever the user does something
  ....LoadMod :/msg *status LoadMod clearbufferonmsg | msg *clearbufferonmsg help
  ....UnLoadMod :/msg *status UnLoadMod clearbufferonmsg
  ....Help :/msg *clearbufferonmsg Help

  ...clientnotify - Notifies you when another IRC client logs into or out of your account. Configurable.
  ....LoadMod :/msg *status LoadMod clientnotify | msg *clientnotify help
  ....UnLoadMod :/msg *status UnLoadMod clientnotify
  ....Help :/msg *clientnotify Help

  ...controlpanel - Dynamic configuration through IRC. Allows editing only yourself if you're not ZNC admin.
  ....LoadMod :/msg *status LoadMod controlpanel | msg *controlpanel help
  ....UnLoadMod :/msg *status UnLoadMod controlpanel
  ....Help :/msg *controlpanel Help

  ...ctcpflood - Don't forward CTCP floods to clients
  ....LoadMod :/msg *status LoadMod ctcpflood | msg *ctcpflood help
  ....UnLoadMod :/msg *status UnLoadMod ctcpflood
  ....Help :/msg *ctcpflood Help

  ...dcc - This module allows you to transfer files to and from ZNC
  ....LoadMod :/msg *status LoadMod dcc | msg *dcc help
  ....UnLoadMod :/msg *status UnLoadMod dcc
  ....Help :/msg *dcc Help

  ...disconkick - Kicks the client from all channels when the connection to the IRC server is lost
  ....LoadMod :/msg *status LoadMod disconkick | msg *disconkick help
  ....UnLoadMod :/msg *status UnLoadMod disconkick
  ....Help :/msg *disconkick Help

  ...flooddetach - Detach channels when flooded
  ....LoadMod :/msg *status LoadMod flooddetach | msg *flooddetach help
  ....UnLoadMod :/msg *status UnLoadMod flooddetach
  ....Help :/msg *flooddetach Help

  ...listsockets - List active sockets
  ....LoadMod :/msg *status LoadMod listsockets | msg *listsockets help
  ....UnLoadMod :/msg *status UnLoadMod listsockets
  ....Help :/msg *listsockets Help

  ...log - Write IRC logs.
  ....LoadMod :/msg *status LoadMod log | msg *log help
  ....UnLoadMod :/msg *status UnLoadMod log
  ....Help :/msg *log Help

  ...missingmotd - Sends 422 to clients when they login
  ....LoadMod :/msg *status LoadMod missingmotd | msg *missingmotd help
  ....UnLoadMod :/msg *status UnLoadMod missingmotd
  ....Help :/msg *missingmotd Help

  ...notes - Keep and replay notes
  ....LoadMod :/msg *status LoadMod notes | msg *notes help
  ....UnLoadMod :/msg *status UnLoadMod notes
  ....Help :/msg *notes Help

  ...perform - Keeps a list of commands to be executed when ZNC connects to IRC.
  ....LoadMod :/msg *status LoadMod perform | msg *perform help
  ....UnLoadMod :/msg *status UnLoadMod perform
  ....Help :/msg *perform Help

  ...raw - View all of the raw traffic
  ....LoadMod :/msg *status LoadMod raw | msg *raw help
  ....UnLoadMod :/msg *status UnLoadMod raw
  ....Help :/msg *raw Help

  ...send_raw - Lets you send some raw IRC lines as/to someone else
  ....LoadMod :/msg *status LoadMod send_raw | msg *send_raw help
  ....UnLoadMod :/msg *status UnLoadMod send_raw
  ....Help :/msg *send_raw Help

  ...shell - Gives shell access. Only ZNC admins can use it.
  ....LoadMod :/msg *status LoadMod shell | msg *shell help
  ....UnLoadMod :/msg *status UnLoadMod shell
  ....Help :/msg *shell Help

  ...webadmin - Web based administration module.
  ....LoadMod :/msg *status LoadMod webadmin | msg *webadmin help
  ....UnLoadMod :/msg *status UnLoadMod webadmin
  ....Help :/msg *webadmin Help

  ..Network modules
  ...alias - Provides bouncer-side command alias support.
  ....LoadMod :/msg *status LoadMod alias | msg *alias help
  ....UnLoadMod :/msg *status UnLoadMod alias
  ....Help :/msg *alias Help

  ...autoattach - Reattaches you to channels on activity.
  ....LoadMod :/msg *status LoadMod autoattach | msg *autoattach help
  ....UnLoadMod :/msg *status UnLoadMod autoattach
  ....Help :/msg *autoattach Help

  ...autocycle - Rejoins channels to gain Op if you're the only user left
  ....LoadMod :/msg *status LoadMod autocycle | msg *autocycle help
  ....UnLoadMod :/msg *status UnLoadMod autocycle
  ....Help :/msg *autocycle Help

  ...autoop - Auto op the good people
  ....LoadMod :/msg *status LoadMod autoop | msg *autoop help
  ....UnLoadMod :/msg *status UnLoadMod autoop
  ....Help :/msg *autoop Help

  ...autoreply - Reply to queries when you are away
  ....LoadMod :/msg *status LoadMod autoreply | msg *autoreply help
  ....UnLoadMod :/msg *status UnLoadMod autoreply
  ....Help :/msg *autoreply Help

  ...autovoice - Auto voice the good people
  ....LoadMod :/msg *status LoadMod autovoice | msg *autovoice help
  ....UnLoadMod :/msg *status UnLoadMod autovoice
  ....Help :/msg *autovoice Help


  ...awaystore - Adds auto-away with logging, useful when you use ZNC from different locations
  ....LoadMod :/msg *status LoadMod awaystore | msg *awaystore help
  ....UnLoadMod :/msg *status UnLoadMod awaystore
  ....Help :/msg *awaystore Help

  ...block_motd - Block the MOTD from IRC so it's not sent to your client(s).
  ....LoadMod :/msg *status LoadMod block_motd | msg *block_motd help
  ....UnLoadMod :/msg *status UnLoadMod block_motd
  ....Help :/msg *block_motd Help

  ...buffextras - Add joins, parts etc. to the playback buffer
  ....LoadMod :/msg *status LoadMod buffextras | msg *buffextras help
  ....UnLoadMod :/msg *status UnLoadMod buffextras
  ....Help :/msg *buffextras Help

  ...cert - Use a ssl certificate to connect to a server
  ....LoadMod :/msg *status LoadMod cert | msg *cert help
  ....UnLoadMod :/msg *status UnLoadMod cert
  ....Help :/msg *cert Help

  ...chansaver - Keep config up-to-date when user joins/parts.
  ....LoadMod :/msg *status LoadMod chansaver | msg *chansaver help
  ....UnLoadMod :/msg *status UnLoadMod chansaver
  ....Help :/msg *chansaver Help

  ...crypt - Encryption for channel/private messages
  ....LoadMod :/msg *status LoadMod crypt | msg *crypt help
  ....UnLoadMod :/msg *status UnLoadMod crypt
  ....Help :/msg *crypt Help

  ...fish - FiSH encryption for channel/private messages
  ....LoadMod :/msg *status LoadMod fish | msg *fish help
  ....UnLoadMod :/msg *status UnLoadMod fish
  ....Help :/msg *fish Help

  ...keepnick - Keep trying for your primary nick
  ....LoadMod :/msg *status LoadMod keepnick | msg *keepnick help
  ....UnLoadMod :/msg *status UnLoadMod keepnick
  ....Help :/msg *keepnick Help

  ...kickrejoin - Autorejoin on kick
  ....LoadMod :/msg *status LoadMod kickrejoin | msg *kickrejoin help
  ....UnLoadMod :/msg *status UnLoadMod kickrejoin
  ....Help :/msg *kickrejoin Help

  ...log - Write IRC logs.
  ....LoadMod :/msg *status LoadMod log | msg *log help
  ....UnLoadMod :/msg *status UnLoadMod log
  ....Help :/msg *log Help

  ...modules_online - Make ZNC's *modules to be "online".
  ....LoadMod :/msg *status LoadMod modules_online | msg *modules_online help
  ....UnLoadMod :/msg *status UnLoadMod modules_online
  ....Help :/msg *modules_online Help

  ...nickserv - Auths you with NickServ
  ....LoadMod :/msg *status LoadMod nickserv | msg *nickserv help
  ....UnLoadMod :/msg *status UnLoadMod nickserv
  ....Help :/msg *nickserv Help

  ...perform - Keeps a list of commands to be executed when ZNC connects to IRC.
  ....LoadMod :/msg *status LoadMod perform | msg *perform help
  ....UnLoadMod :/msg *status UnLoadMod perform
  ....Help :/msg *perform Help

  ...q - Auths you with QuakeNet's Q bot.
  ....LoadMod :/msg *status LoadMod q | msg *q help
  ....UnLoadMod :/msg *status UnLoadMod q
  ....Help :/msg *q Help

  ...raw - View all of the raw traffic
  ....LoadMod :/msg *status LoadMod raw | msg *raw help
  ....UnLoadMod :/msg *status UnLoadMod raw
  ....Help :/msg *raw Help

  ...route_replies - Send replies (e.g. to /who) to the right client only
  ....LoadMod :/msg *status LoadMod route_replies | msg *route_replies help
  ....UnLoadMod :/msg *status UnLoadMod route_replies
  ....Help :/msg *route_replies Help

  ...sample - To be used as a sample for writing modules
  ....LoadMod :/msg *status LoadMod sample | msg *sample help
  ....UnLoadMod :/msg *status UnLoadMod sample
  ....Help :/msg *sample Help

  ...sasl - Adds support for sasl authentication capability to authenticate to an IRC server
  ....LoadMod :/msg *status LoadMod sasl | msg *sasl help
  ....UnLoadMod :/msg *status UnLoadMod sasl
  ....Help :/msg *sasl Help

  ...savebuff - Stores channel and query buffers to disk, encrypted
  ....LoadMod :/msg *status LoadMod savebuff | msg *savebuff help
  ....UnLoadMod :/msg *status UnLoadMod savebuff
  ....Help :/msg *savebuff Help

  ...schat - Secure cross platform chat system
  ....LoadMod :/msg *status LoadMod schat | msg *schat help
  ....UnLoadMod :/msg *status UnLoadMod schat
  ....Help :/msg *schat Help

  ...simple_away - This module will automatically set you away on IRC while you are disconnected from the bouncer.
  ....LoadMod :/msg *status LoadMod simple_away | msg *simple_away help
  ....UnLoadMod :/msg *status UnLoadMod simple_away
  ....Help :/msg *simple_away Help

  ...stickychan - configless sticky chans, keeps you there very stickily even
  ....LoadMod :/msg *status LoadMod stickychan | msg *stickychan help
  ....UnLoadMod :/msg *status UnLoadMod stickychan
  ....Help :/msg *stickychan Help

  ...watch - Copy activity from a specific user into a separate window
  ....LoadMod :/msg *status LoadMod watch | msg *watch help
  ....UnLoadMod :/msg *status UnLoadMod watch
  ....Help :/msg *watch Help

  ..Global modules
  ...adminlog - Log ZNC events to file and/or syslog.
  ....LoadMod :/msg *status LoadMod adminlog | msg *adminlog help
  ....UnLoadMod :/msg *status UnLoadMod adminlog
  ....Help :/msg *adminlog Help

  ...block_motd - Block the MOTD from IRC so it's not sent to your client(s).
  ....LoadMod :/msg *status LoadMod block_motd | msg *block_motd help
  ....UnLoadMod :/msg *status UnLoadMod block_motd
  ....Help :/msg *block_motd Help

  ...blockuser - Block certain users from logging in.
  ....LoadMod :/msg *status LoadMod blockuser | msg *blockuser help
  ....UnLoadMod :/msg *status UnLoadMod blockuser
  ....Help :/msg *blockuser Help

  ...certauth - Allow users to authenticate via SSL client certificates.
  ....LoadMod :/msg *status LoadMod certauth | msg *certauth help
  ....UnLoadMod :/msg *status UnLoadMod certauth
  ....Help :/msg *certauth Help

  ...chansaver - Keep config up-to-date when user joins/parts.
  ....LoadMod :/msg *status LoadMod chansaver | msg *chansaver help
  ....UnLoadMod :/msg *status UnLoadMod chansaver
  ....Help :/msg *chansaver Help

  ...fail2ban - Block IPs for some time after a failed login.
  ....LoadMod :/msg *status LoadMod fail2ban | msg *fail2ban help
  ....UnLoadMod :/msg *status UnLoadMod fail2ban
  ....Help :/msg *fail2ban Help

  ...identfile - Write the ident of a user to a file when they are trying to connect.
  ....LoadMod :/msg *status LoadMod identfile | msg *identfile help
  ....UnLoadMod :/msg *status UnLoadMod identfile
  ....Help :/msg *identfile Help

  ...imapauth - Allow users to authenticate via IMAP.
  ....LoadMod :/msg *status LoadMod imapauth | msg *imapauth help
  ....UnLoadMod :/msg *status UnLoadMod imapauth
  ....Help :/msg *imapauth Help

  ...lastseen - Collects data about when a user last logged in.
  ....LoadMod :/msg *status LoadMod lastseen | msg *lastseen help
  ....UnLoadMod :/msg *status UnLoadMod lastseen
  ....Help :/msg *lastseen Help

  ...log - Write IRC logs.
  ....LoadMod :/msg *status LoadMod log | msg *log help
  ....UnLoadMod :/msg *status UnLoadMod log
  ....Help :/msg *log Help

  ...notify_connect - Notifies all admin users when a client connects or disconnects.
  ....LoadMod :/msg *status LoadMod notify_connect | msg *notify_connect help
  ....UnLoadMod :/msg *status UnLoadMod notify_connect
  ....Help :/msg *notify_connect Help

  ...partyline - Internal channels and queries for users connected to znc
  ....LoadMod :/msg *status LoadMod partyline | msg *partyline help
  ....UnLoadMod :/msg *status UnLoadMod partyline
  ....Help :/msg *partyline Help

  ...webadmin - Web based administration module.
  ....LoadMod :/msg *status LoadMod webadmin | msg *webadmin help
  ....UnLoadMod :/msg *status UnLoadMod webadmin
  ....Help :/msg *webadmin Help

  ..User modules
  ...alias - Provides bouncer-side command alias support.
  ....LoadMod :/msg *status LoadMod alias | msg *alias help
  ....UnLoadMod :/msg *status UnLoadMod alias
  ....Help :/msg *alias Help

  ...autoattach - Reattaches you to channels on activity.
  ....LoadMod :/msg *status LoadMod autoattach | msg *autoattach help
  ....UnLoadMod :/msg *status UnLoadMod autoattach
  ....Help :/msg *autoattach Help

  ...autoreply - Reply to queries when you are away
  ....LoadMod :/msg *status LoadMod autoreply | msg *autoreply help
  ....UnLoadMod :/msg *status UnLoadMod autoreply
  ....Help :/msg *autoreply Help

  ...block_motd - Block the MOTD from IRC so it's not sent to your client(s).
  ....LoadMod :/msg *status LoadMod block_motd | msg *block_motd help
  ....UnLoadMod :/msg *status UnLoadMod block_motd
  ....Help :/msg *block_motd Help

  ...bouncedcc - Bounces DCC transfers through ZNC instead of sending them directly to the user.
  ....LoadMod :/msg *status LoadMod bouncedcc | msg *bouncedcc help
  ....UnLoadMod :/msg *status UnLoadMod bouncedcc
  ....Help :/msg *bouncedcc Help

  ...buffextras - Add joins, parts etc. to the playback buffer
  ....LoadMod :/msg *status LoadMod buffextras | msg *buffextras help
  ....UnLoadMod :/msg *status UnLoadMod buffextras
  ....Help :/msg *buffextras Help

  ...cert - Use a ssl certificate to connect to a server
  ....LoadMod :/msg *status LoadMod cert | msg *cert help
  ....UnLoadMod :/msg *status UnLoadMod cert
  ....Help :/msg *cert Help

  ...chansaver - Keep config up-to-date when user joins/parts.
  ....LoadMod :/msg *status LoadMod chansaver | msg *chansaver help
  ....UnLoadMod :/msg *status UnLoadMod chansaver
  ....Help :/msg *chansaver Help

  ...clearbufferonmsg - Clear all channel and query buffers whenever the user does something
  ....LoadMod :/msg *status LoadMod clearbufferonmsg | msg *clearbufferonmsg help
  ....UnLoadMod :/msg *status UnLoadMod clearbufferonmsg
  ....Help :/msg *clearbufferonmsg Help

  ...clientnotify - Notifies you when another IRC client logs into or out of your account. Configurable.
  ....LoadMod :/msg *status LoadMod clientnotify | msg *clientnotify help
  ....UnLoadMod :/msg *status UnLoadMod clientnotify
  ....Help :/msg *clientnotify Help

  ...controlpanel - Dynamic configuration through IRC. Allows editing only yourself if you're not ZNC admin.
  ....LoadMod :/msg *status LoadMod controlpanel | msg *controlpanel help
  ....UnLoadMod :/msg *status UnLoadMod controlpanel
  ....Help :/msg *controlpanel Help

  ...ctcpflood - Don't forward CTCP floods to clients
  ....LoadMod :/msg *status LoadMod ctcpflood | msg *ctcpflood help
  ....UnLoadMod :/msg *status UnLoadMod ctcpflood
  ....Help :/msg *ctcpflood Help

  ...dcc - This module allows you to transfer files to and from ZNC
  ....LoadMod :/msg *status LoadMod dcc | msg *dcc help
  ....UnLoadMod :/msg *status UnLoadMod dcc
  ....Help :/msg *dcc Help

  ...disconkick - Kicks the client from all channels when the connection to the IRC server is lost
  ....LoadMod :/msg *status LoadMod disconkick | msg *disconkick help
  ....UnLoadMod :/msg *status UnLoadMod disconkick
  ....Help :/msg *disconkick Help

  ...flooddetach - Detach channels when flooded
  ....LoadMod :/msg *status LoadMod flooddetach | msg *flooddetach help
  ....UnLoadMod :/msg *status UnLoadMod flooddetach
  ....Help :/msg *flooddetach Help

  ...listsockets - List active sockets
  ....LoadMod :/msg *status LoadMod listsockets | msg *listsockets help
  ....UnLoadMod :/msg *status UnLoadMod listsockets
  ....Help :/msg *listsockets Help

  ...log - Write IRC logs.
  ....LoadMod :/msg *status LoadMod log | msg *log help
  ....UnLoadMod :/msg *status UnLoadMod log
  ....Help :/msg *log Help

  ...missingmotd - Sends 422 to clients when they login
  ....LoadMod :/msg *status LoadMod missingmotd | msg *missingmotd help
  ....UnLoadMod :/msg *status UnLoadMod missingmotd
  ....Help :/msg *missingmotd Help

  ...notes - Keep and replay notes
  ....LoadMod :/msg *status LoadMod notes | msg *notes help
  ....UnLoadMod :/msg *status UnLoadMod notes
  ....Help :/msg *notes Help

  ...perform - Keeps a list of commands to be executed when ZNC connects to IRC.
  ....LoadMod :/msg *status LoadMod perform | msg *perform help
  ....UnLoadMod :/msg *status UnLoadMod perform
  ....Help :/msg *perform Help

  ...raw - View all of the raw traffic
  ....LoadMod :/msg *status LoadMod raw | msg *raw help
  ....UnLoadMod :/msg *status UnLoadMod raw
  ....Help :/msg *raw Help

  ...send_raw - Lets you send some raw IRC lines as/to someone else
  ....LoadMod :/msg *status LoadMod send_raw | msg *send_raw help
  ....UnLoadMod :/msg *status UnLoadMod send_raw
  ....Help :/msg *send_raw Help

  ...shell - Gives shell access. Only ZNC admins can use it.
  ....LoadMod :/msg *status LoadMod shell | msg *shell help
  ....UnLoadMod :/msg *status UnLoadMod shell
  ....Help :/msg *shell Help

  ...webadmin - Web based administration module.
  ....LoadMod :/msg *status LoadMod webadmin | msg *webadmin help
  ....UnLoadMod :/msg *status UnLoadMod webadmin
  ....Help :/msg *webadmin Help

  ..Network modules
  ...alias - Provides bouncer-side command alias support.
  ....LoadMod :/msg *status LoadMod alias | msg *alias help
  ....UnLoadMod :/msg *status UnLoadMod alias
  ....Help :/msg *alias Help

  ...autoattach - Reattaches you to channels on activity.
  ....LoadMod :/msg *status LoadMod autoattach | msg *autoattach help
  ....UnLoadMod :/msg *status UnLoadMod autoattach
  ....Help :/msg *autoattach Help

  ...autocycle - Rejoins channels to gain Op if you're the only user left
  ....LoadMod :/msg *status LoadMod autocycle | msg *autocycle help
  ....UnLoadMod :/msg *status UnLoadMod autocycle
  ....Help :/msg *autocycle Help

  ...autoop - Auto op the good people
  ....LoadMod :/msg *status LoadMod autoop | msg *autoop help
  ....UnLoadMod :/msg *status UnLoadMod autoop
  ....Help :/msg *autoop Help

  ...autoreply - Reply to queries when you are away
  ....LoadMod :/msg *status LoadMod autoreply | msg *autoreply help
  ....UnLoadMod :/msg *status UnLoadMod autoreply
  ....Help :/msg *autoreply Help

  ...autovoice - Auto voice the good people
  ....LoadMod :/msg *status LoadMod autovoice | msg *autovoice help
  ....UnLoadMod :/msg *status UnLoadMod autovoice
  ....Help :/msg *autovoice Help


  ...awaystore - Adds auto-away with logging, useful when you use ZNC from different locations
  ....LoadMod :/msg *status LoadMod awaystore | msg *awaystore help
  ....UnLoadMod :/msg *status UnLoadMod awaystore
  ....Help :/msg *awaystore Help

  ...block_motd - Block the MOTD from IRC so it's not sent to your client(s).
  ....LoadMod :/msg *status LoadMod block_motd | msg *block_motd help
  ....UnLoadMod :/msg *status UnLoadMod block_motd
  ....Help :/msg *block_motd Help

  ...buffextras - Add joins, parts etc. to the playback buffer
  ....LoadMod :/msg *status LoadMod buffextras | msg *buffextras help
  ....UnLoadMod :/msg *status UnLoadMod buffextras
  ....Help :/msg *buffextras Help

  ...cert - Use a ssl certificate to connect to a server
  ....LoadMod :/msg *status LoadMod cert | msg *cert help
  ....UnLoadMod :/msg *status UnLoadMod cert
  ....Help :/msg *cert Help

  ...chansaver - Keep config up-to-date when user joins/parts.
  ....LoadMod :/msg *status LoadMod chansaver | msg *chansaver help
  ....UnLoadMod :/msg *status UnLoadMod chansaver
  ....Help :/msg *chansaver Help

  ...crypt - Encryption for channel/private messages
  ....LoadMod :/msg *status LoadMod crypt | msg *crypt help
  ....UnLoadMod :/msg *status UnLoadMod crypt
  ....Help :/msg *crypt Help

  ...fish - FiSH encryption for channel/private messages
  ....LoadMod :/msg *status LoadMod fish | msg *fish help
  ....UnLoadMod :/msg *status UnLoadMod fish
  ....Help :/msg *fish Help

  ...keepnick - Keep trying for your primary nick
  ....LoadMod :/msg *status LoadMod keepnick | msg *keepnick help
  ....UnLoadMod :/msg *status UnLoadMod keepnick
  ....Help :/msg *keepnick Help

  ...kickrejoin - Autorejoin on kick
  ....LoadMod :/msg *status LoadMod kickrejoin | msg *kickrejoin help
  ....UnLoadMod :/msg *status UnLoadMod kickrejoin
  ....Help :/msg *kickrejoin Help

  ...log - Write IRC logs.
  ....LoadMod :/msg *status LoadMod log | msg *log help
  ....UnLoadMod :/msg *status UnLoadMod log
  ....Help :/msg *log Help

  ...modules_online - Make ZNC's *modules to be "online".
  ....LoadMod :/msg *status LoadMod modules_online | msg *modules_online help
  ....UnLoadMod :/msg *status UnLoadMod modules_online
  ....Help :/msg *modules_online Help

  ...nickserv - Auths you with NickServ
  ....LoadMod :/msg *status LoadMod nickserv | msg *nickserv help
  ....UnLoadMod :/msg *status UnLoadMod nickserv
  ....Help :/msg *nickserv Help

  ...perform - Keeps a list of commands to be executed when ZNC connects to IRC.
  ....LoadMod :/msg *status LoadMod perform | msg *perform help
  ....UnLoadMod :/msg *status UnLoadMod perform
  ....Help :/msg *perform Help

  ...q - Auths you with QuakeNet's Q bot.
  ....LoadMod :/msg *status LoadMod q | msg *q help
  ....UnLoadMod :/msg *status UnLoadMod q
  ....Help :/msg *q Help

  ...raw - View all of the raw traffic
  ....LoadMod :/msg *status LoadMod raw | msg *raw help
  ....UnLoadMod :/msg *status UnLoadMod raw
  ....Help :/msg *raw Help

  ...route_replies - Send replies (e.g. to /who) to the right client only
  ....LoadMod :/msg *status LoadMod route_replies | msg *route_replies help
  ....UnLoadMod :/msg *status UnLoadMod route_replies
  ....Help :/msg *route_replies Help

  ...sample - To be used as a sample for writing modules
  ....LoadMod :/msg *status LoadMod sample | msg *sample help
  ....UnLoadMod :/msg *status UnLoadMod sample
  ....Help :/msg *sample Help

  ...sasl - Adds support for sasl authentication capability to authenticate to an IRC server
  ....LoadMod :/msg *status LoadMod sasl | msg *sasl help
  ....UnLoadMod :/msg *status UnLoadMod sasl
  ....Help :/msg *sasl Help

  ...savebuff - Stores channel and query buffers to disk, encrypted
  ....LoadMod :/msg *status LoadMod savebuff | msg *savebuff help
  ....UnLoadMod :/msg *status UnLoadMod savebuff
  ....Help :/msg *savebuff Help

  ...schat - Secure cross platform chat system
  ....LoadMod :/msg *status LoadMod schat | msg *schat help
  ....UnLoadMod :/msg *status UnLoadMod schat
  ....Help :/msg *schat Help

  ...simple_away - This module will automatically set you away on IRC while you are disconnected from the bouncer.
  ....LoadMod :/msg *status LoadMod simple_away | msg *simple_away help
  ....UnLoadMod :/msg *status UnLoadMod simple_away
  ....Help :/msg *simple_away Help

  ...stickychan - configless sticky chans, keeps you there very stickily even
  ....LoadMod :/msg *status LoadMod stickychan | msg *stickychan help
  ....UnLoadMod :/msg *status UnLoadMod stickychan
  ....Help :/msg *stickychan Help

  ...watch - Copy activity from a specific user into a separate window     
  ....LoadMod :/msg *status LoadMod watch | msg *watch help
  ....UnLoadMod :/msg *status UnLoadMod watch
  ....Help :/msg *watch Help


  .Server
  ..AddServer <host> [[+]port] [pass]:/msg *status AddServer $$?="<host> [[+]port] [pass]"
  ..DelServer <host> [port] [pass]:/msg *status DelServer $$?="<host> [port] [pass]"
  ..Jump:/msg *status Jump
  ..Disconnect:/msg *status Disconnect
  ..Connect:/msg *status Connect
  .Network
  ..AddNetwork <name>:/msg *status AddNetwork $$?="Name of new network?"
  ..DelNetwork <name>:/msg *status DelNetwork $$?="Name of remove network?"
  ..ListNetworks:/msg *status ListNetworks
  ..JumpNetwork <network>:/msg *status JumpNetwork $$?="Jump to another network (Alternatively, you can connect to ZNC several times, using `user/network` as username)"


  .Servers
  ..ListServers:/msg *status ListServers
  .MOTD
  ..ShowMOTD - Show ZNC's message of the day:/msg *status ShowMOTD
  ..SetMOTD <message> - Set ZNC's message of the day:/msg *status SetMOTD $$?="Message?"
  ..AddMOTD <message> - Append <message> to ZNC's MOTD:/msg *status AddMOTD $$?="Message?"
  ..ClearMOTD - Clear ZNC's MOTD:/msg *status ClearMOTD
  .-
  .SaveConfig - Save the current settings to disk:/msg *status SaveConfig
  .Rehash - Reload znc.conf from disk:/msg *status Rehash
  .-
  .ListUsers - List all ZNC users and their connection status:/msg *status ListUsers
  .ListAllUserNetworks - List all ZNC users and their networks:/msg *status ListAllUserNetworks
  .-
  .Traffic - Show basic traffic stats for all ZNC users:/msg *status Traffic 
  .Uptime:/msg *status Uptime
  .Help:/msg *status help
  .Version:/msg *status Version

}
