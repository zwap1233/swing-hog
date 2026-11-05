FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " file://bsp.cfg"
KERNEL_FEATURES:append = " bsp.cfg"
SRC_URI += "file://user_2026-11-05-11-00-00.cfg \
            file://user_2026-11-05-17-07-00.cfg \
            file://user_2026-11-05-17-30-00.cfg \
            "

