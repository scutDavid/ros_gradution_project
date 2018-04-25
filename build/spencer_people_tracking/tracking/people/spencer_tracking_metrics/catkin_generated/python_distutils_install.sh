#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/wwh/qqq/src/spencer_people_tracking/tracking/people/spencer_tracking_metrics"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/wwh/qqq/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/wwh/qqq/install/lib/python2.7/dist-packages:/home/wwh/qqq/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/wwh/qqq/build" \
    "/usr/bin/python" \
    "/home/wwh/qqq/src/spencer_people_tracking/tracking/people/spencer_tracking_metrics/setup.py" \
    build --build-base "/home/wwh/qqq/build/spencer_people_tracking/tracking/people/spencer_tracking_metrics" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/wwh/qqq/install" --install-scripts="/home/wwh/qqq/install/bin"
