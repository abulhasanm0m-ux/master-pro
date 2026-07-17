FROM qemux/qemu-docker

# Windows 10 VM Resources
ENV RAM=8192
ENV CPU_CORES=4
ENV DISK_SIZE=50G
ENV QEMU_OPTS="-enable-kvm -cpu host -machine pc,accel=kvm"

# Windows ISO Download (Automatic)
ENV WIN_ISO_URL="https://archive.org/download/windows10x64_202408/Windows10x64.iso"
ENV WIN_ISO="windows10.iso"

# RDP Enable
RUN echo 'enabling RDP...'

EXPOSE 3389 6080
