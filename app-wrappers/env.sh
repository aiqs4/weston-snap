#!/bin/sh -e

WESTON_MODULE_MAP=""
WESTON_MODULE_MAP="${WESTON_MODULE_MAP};weston-desktop-shell=${SNAP}/usr/libexec/weston-desktop-shell"

## FIXME: TODO: ivi is configureable !
WESTON_MODULE_MAP="${WESTON_MODULE_MAP};weston-ivi-shell-user-interface=${SNAP}/usr/libexec/weston-ivi-shell-user-interface"
WESTON_MODULE_MAP="${WESTON_MODULE_MAP};weston-keyboard=${SNAP}/usr/libexec/weston-keyboard"

## FIXME: TODO: weston-screenshooter is also configurable !
WESTON_MODULE_MAP="${WESTON_MODULE_MAP};weston-screenshooter=${SNAP}/usr/libexec/weston-screenshooter"
WESTON_MODULE_MAP="${WESTON_MODULE_MAP};weston-simple-im=${SNAP}/usr/libexec/weston-simple-im"

WESTON_MODULE_MAP="${WESTON_MODULE_MAP};desktop-shell.so:${SNAP}/usr/lib/${SNAPCRAFT_ARCH_TRIPLET}/weston/desktop-shell.so"

WESTON_MODULE_MAP="${WESTON_MODULE_MAP};fbdev-backend.so=${SNAP}/usr/lib/${SNAPCRAFT_ARCH_TRIPLET}/libweston-7/fbdev-backend.so"
WESTON_MODULE_MAP="${WESTON_MODULE_MAP};gl-renderer.so=${SNAP}/usr/lib/${SNAPCRAFT_ARCH_TRIPLET}/libweston-7/gl-renderer.so"
WESTON_MODULE_MAP="${WESTON_MODULE_MAP};headless-backend.so=${SNAP}/usr/lib/${SNAPCRAFT_ARCH_TRIPLET}/libweston-7/headless-backend.so"
WESTON_MODULE_MAP="${WESTON_MODULE_MAP};wayland-backend.so=${SNAP}/usr/lib/${SNAPCRAFT_ARCH_TRIPLET}/libweston-7/wayland-backend.so"
WESTON_MODULE_MAP="${WESTON_MODULE_MAP};x11-backend.so=${SNAP}/usr/lib/${SNAPCRAFT_ARCH_TRIPLET}/libweston-7/x11-backend.so"
WESTON_MODULE_MAP="${WESTON_MODULE_MAP};xwayland.so=${SNAP}/usr/lib/${SNAPCRAFT_ARCH_TRIPLET}/libweston-7/xwayland.so"
WESTON_MODULE_MAP="${WESTON_MODULE_MAP};drm-backend.so=${SNAP}/usr/lib/${SNAPCRAFT_ARCH_TRIPLET}/libweston-7/drm-backend.so"

export WESTON_MODULE_MAP

