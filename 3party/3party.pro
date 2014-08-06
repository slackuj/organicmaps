# Project that includes all third party projects.

TEMPLATE = subdirs

SUBDIRS = freetype fribidi zlib bzip2 jansson tomcrypt protobuf osrm

# use expat from the system on linux
!linux*: SUBDIRS *= expat

!iphone*:!tizen*:!android* {
  SUBDIRS += gflags   \
             sgitess  \
             qjsonrpc \
             gmock    \
}
