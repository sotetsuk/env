alias ls="ls -alGh"
alias fuck="networksetup -setairportpower en0 off; sleep 2; networksetup -setairportpower en0 on"
alias p8="ping 8.8.8.8"
alias openvpn="scutil --nc start kuins_lab"
alias closevpn="scutil --nc stop kuins_lab"
alias vnczaou="open vnc://h75.11.232.10.1017345.vlan.kuins.net"
function duo() {flashcard --hint $1 --num 10 --random https://docs.google.com/spreadsheets/d/1bHXt4ZY0S54RU6EeT7eHGh_KAI7ncdn96KSh-Hx0xGo}
