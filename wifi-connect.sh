iwctl device list
echo "Select an interface to connect wifi"
read interface

iwctl station $interface get-networks
echo "Select a wifi to connect"
read wifi

iwctl station $interface connect $wifi

iwctl station $interface show

