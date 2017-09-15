if not set -q DISPLAY; and [ (tty) = /dev/tty1 ]
    exec startx
end
