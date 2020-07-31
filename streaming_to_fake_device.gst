appsrc is-live=true do-timestamp=true typefind=true !
videoconvert ! videoscale ! video/x-raw,format=(string)YUY2, framerate=30/1  ! videoconvert !
clockoverlay shaded-background=true font-desc="Sans 38" ! tee  ! v4l2sink device=/dev/video1