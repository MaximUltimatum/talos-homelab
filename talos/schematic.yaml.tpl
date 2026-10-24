customization:
  systemExtensions:
    officialExtensions:
      - siderolabs/iscsi-tools # longhorn
      - siderolabs/util-linux-tools # longhorn
      - siderolabs/nvme-cli # nvmes
      - siderolabs/tailscale # it says on the tin
      {{- if eq .Node.Host "aislinn" }}
      - siderolabs/nonfree-kmod-nvidia-production # gpu
      - siderolabs/nvidia-container-toolkit-production # gpu
      {{- else if eq .Node.Host "alithanar" }}
      - siderolabs/zfs # nas
      - siderolabs/nfsd # nas
      {{- else }}
      - siderolabs/usb-modem-drivers # for tyrion
      {{- end }}
