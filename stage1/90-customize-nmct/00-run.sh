
log "Installing NMCT Customizations..."

install -v -m 755 files/nmctool 	"${ROOTFS_DIR}/usr/local/bin/"
install -v -m 644 files/bash_aliases	"${ROOTFS_DIR}/etc/skel/.bash_aliases"
install -v -m 644 files/bash_aliases	"${ROOTFS_DIR}/etc/bash.bash_aliases"

sed "/PS1=/ s/01;32m/01;31m/g" "${ROOTFS_DIR}/etc/skel/.bashrc" > "${ROOTFS_DIR}/root/.bashrc"

log "-- end "
