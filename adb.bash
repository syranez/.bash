# Enables remote debugging of Chrome on mobile devices
#+ on desktop Chrome.

# creates a tunnel for remote chrome debugging
#
# @output
activate_adb () {

    port=9222;

    adb forward tcp:${port} localabstract:chrome_devtools_remote
    echo "Open now http://localhost:${port} in Chrome"
}
