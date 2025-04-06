##################################################################
#                   mIRC ZNC Script - v3.1                       #
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
; Description: Comprehensive mIRC script for ZNC control
; Author:      ZarTek-Creole (https://github.com/ZarTek-Creole)
; Contact:     zartek.creoleGmail.com
; Version:     3.1
; Date:        2018-2025
; License:     MIT License
; Repository:  https://github.com/ZarTek-Creole/ZNC-mIRC-Script
##################################################################

on *:START: {
  set %znc_max_lines 200    ; Max lines in log
  set %auto_close_delay 10  ; Auto-close delay (seconds)
  echo -a ZNC Script v3.1 loaded successfully
}

; --- Initialization ---
alias  init_znc_log {
  if (!$window(@ZNC_Log)) {
    window -hls +t @ZNC_Log 700 300 800 400
    aline -hi @ZNC_Log ZNC Command Log - Started at $time(hh:nn:ss)
  }
}

; --- Command Handling ---
alias znc_cmd {
  init_znc_log
  if ($window(@ZNC_Log).state == hidden) { window -w @ZNC_Log }
  var %cmd = $1-
  aline @ZNC_Log ( $+ $time(hh:nn:ss) $+ ) [CMD] > %cmd
  msg *status %cmd
  if ($window(*status)) {
    .timerZNCclose 1 %auto_close_delay close -m *status
  }
  if ($line(@ZNC_Log,0) > %znc_max_lines) dline @ZNC_Log 1
}

; --- Response Logging ---
on *:TEXT:*:?: {
  if ($nick != *status) { halt }
  init_znc_log
  aline @ZNC_Log ( $+ $time(hh:nn:ss) $+ ) [ZNC] < $1-
  if ($line(@ZNC_Log,0) > %znc_max_lines) dline @ZNC_Log 1
}

; --- Log Management ---
alias clear_log {
  window -c @ZNC_Log
  init_znc_log
  aline -hi @ZNC_Log ZNC Command Log - Cleared at $time(hh:nn:ss)
}

alias save_log {
  if (!$1) { echo -a Syntax: /save_log <filename> | return }
  .remove $qt($1)
  var %i = 1
  while (%i <= $line(@ZNC_Log,0)) {
    write $qt($1) $line(@ZNC_Log,%i)
    inc %i
  }
  echo -a Log saved to $1 ( $+ $lines($1) $+ lines)
}

alias toggle_log {
  if ($window(@ZNC_Log)) {
    if ($window(@ZNC_Log).state == hidden) { window -w @ZNC_Log }
    else { window -h @ZNC_Log }
  }
  else { init_znc_log }
}

; --- Context Menus ---
menu @ZNC_Log {
  .ZNC Log Options:
  ..Show/Hide:/toggle_log
  ..Clear Log:/clear_log
  ..Save As...:/save_log $$?="Filename:"
  ..-
  ..Current Lines: $line(@ZNC_Log,0)
  ..Set Max Lines...:/set %znc_max_lines $$?="New max:"
}

menu status,channel,nicklist,query {
  .-[ ZNC Control Panel ]-
  .Log Window:
  ..Show/Hide:/toggle_log
  ..Clear:/clear_log
  ..Save As...:/save_log $$?="Filename:"

  .Core:
  ..Version:/znc_cmd Version
  ..Uptime:/znc_cmd Uptime
  ..Traffic Stats:/znc_cmd Traffic
  ..Help:/znc_cmd help

  .Configuration:
  ..Save Config:/znc_cmd SaveConfig
  ..Reload Config:/znc_cmd Rehash
  ..Broadcast:/znc_cmd Broadcast $$?="Message?"
  ..Shutdown:/znc_cmd Shutdown $$?="Message?"
  ..Restart:/znc_cmd Restart $$?="Message?"

  .Network Management:
  ..Add Network:/znc_cmd AddNetwork $$?="Network name"
  ..Delete Network:/znc_cmd DelNetwork $$?="Network to remove"
  ..List Networks:/znc_cmd ListNetworks
  ..Jump Network:/znc_cmd JumpNetwork $$?="Network name"
  ..Move Network:/znc_cmd MoveNetwork $$?="old-user old-net new-user [new-net]"

  .Server Management:
  ..Add Server:/znc_cmd AddServer $$?="<host> [[+]port] [pass]"
  ..Delete Server:/znc_cmd DelServer $$?="<host> [port] [pass]"
  ..List Servers:/znc_cmd ListServers
  ..Jump Server:/znc_cmd Jump $$?="[server]"
  ..Disconnect:/znc_cmd Disconnect $$?="[message]"
  ..Reconnect:/znc_cmd Connect

  .Channel Control:
  ..List Channels:/znc_cmd ListChans
  ..Enable Channel:/znc_cmd EnableChan $$?="Channel to enable"
  ..Disable Channel:/znc_cmd DisableChan $$?="Channel to disable"
  ..Detach Channel:/znc_cmd Detach $$?="Channel to detach"
  ..List Nicks:/znc_cmd ListNicks $$?="Channel"
  ..Show Topics:/znc_cmd Topics

  .Buffer Management:
  ..Play Buffer:/znc_cmd PlayBuffer $$?="<#chan|query>"
  ..Clear Buffer:/znc_cmd ClearBuffer $$?="<#chan|query>"
  ..Clear All Buffers:/znc_cmd ClearAllBuffers
  ..Clear Channel Buffers:/znc_cmd ClearAllChannelBuffers
  ..Clear Query Buffers:/znc_cmd ClearAllQueryBuffers
  ..Set Buffer Size:/znc_cmd SetBuffer $$?="<#chan|query> [linecount]"

  .Module Control:
  ..List Modules:/znc_cmd ListMods
  ..Available Modules:/znc_cmd ListAvailMods
  ..Load Module:/znc_cmd LoadMod $$?="[--type=global|user|network] <module>"
  ..Unload Module:/znc_cmd UnloadMod $$?="[--type=global|user|network] <module>"
  ..Reload Module:/znc_cmd ReloadMod $$?="[--type=global|user|network] <module>"
  ..Update Module:/znc_cmd UpdateMod $$?="<module>"

  .Bind Hosts:
  ..Add Bind Host:/znc_cmd AddBindHost $$?="<host (IP preferred)>"
  ..Delete Bind Host:/znc_cmd DelBindHost $$?="<host>"
  ..List Bind Hosts:/znc_cmd ListBindHosts
  ..Set Bind Host:/znc_cmd SetBindHost $$?="<host (IP preferred)>"
  ..Clear Bind Host:/znc_cmd ClearBindHost
  ..Show Bind Host:/znc_cmd ShowBindHost

  .MOTD:
  ..Show MOTD:/znc_cmd ShowMOTD
  ..Set MOTD:/znc_cmd SetMOTD $$?="Message"
  ..Add to MOTD:/znc_cmd AddMOTD $$?="Message"
  ..Clear MOTD:/znc_cmd ClearMOTD

  .User Management:
  ..List Users:/znc_cmd ListUsers
  ..List All Networks:/znc_cmd ListAllUserNetworks
  ..List Clients:/znc_cmd ListClients $$?="[User]"

  .Port Management:
  ..List Ports:/znc_cmd ListPorts
  ..Add Port:/znc_cmd AddPort $$?="<arguments>"
  ..Delete Port:/znc_cmd DelPort $$?="<arguments>"

  .Documentation:
  ..ZNC Commands:/znc_cmd help
  ..Modules Docs:/run https://wiki.znc.in/Modules
  ..Script Help:/run https://github.com/ZarTek-Creole/ZNC-mIRC-Script
}

