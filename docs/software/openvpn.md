openvpn

    sudo apt-get install openvpn
    sudo openvpn --config /path/to/config.ovpn
    
    # Uncomment this directive to allow different clients to be able to "see" each other
    client-to-client
    
    sudo service openvpn start
    
    # Generate certificates & keys for clients
    ./build-key client
    
    # fixed ip config in server.conf
    client-config-dir ccd
    
    # edit file ccd/devhost
    ifconfig-push 10.8.1.1 10.8.1.2



