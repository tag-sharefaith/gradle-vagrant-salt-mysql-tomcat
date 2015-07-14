/tmp:
  mount.mounted:
    - device: tmpfs
    - fstype: tmpfs
    - opts: defaults,mode=1777
    - mount: true