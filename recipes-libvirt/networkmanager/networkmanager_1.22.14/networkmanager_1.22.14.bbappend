SUMMARY = "network manager connection files"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://bridge-br0.nmconnection"
SRC_URI += "file://bridge-slave-eth0.nmconnection"

 
do_install_append() {
        install -m 0600 ${WORKDIR}/bridge-br0.nmconnection ${D}${sysconfdir}/NetworkManager/system-connections/bridge-br0.nmconnection
        install -m 0600 ${WORKDIR}/bridge-slave-eth0.nmconnection ${D}${sysconfdir}/NetworkManager/system-connections/bridge-slave-eth0.nmconnection
}

