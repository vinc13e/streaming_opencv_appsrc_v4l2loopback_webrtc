# Streaming from opencv app (appsrc) to web browser
## #pipeline: opencv -> gstreamer (appsrc) -> v4l2 (v4l2loopback) -> browser (webrtc)
 
#### usage:
- Setup v4l2loopback  (https://github.com/umlaeute/v4l2loopback)
```
modprobe v4l2loopback exclusive_caps=1 video_nr=1
```

- From opencv write video to pipeline included in .gst file
- Or test directly with gst-launch:
```
gst-launch-1.0 -v videotestsrc is-live=true !  clockoverlay shaded-background=true font-desc="Sans 38" ! tee ! v4l2sink device=/dev/video2
```
- Open index.html on browser and select `dummy video device`

