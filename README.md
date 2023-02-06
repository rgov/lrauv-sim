This is Ryan's fork of [osrf/lrauv](https://github.com/osrf/lrauv) for running the LRAUV Gazebo simulator and vehicle application:

Both Gazebo and the LRAUV application run under separate Docker containers.

Gazebo runs under VirtualGL in order to take advantage of 3D graphics acceleration, even when accessed over VNC.

The containers communicate via Multicast UDP over a macvlan interface. (It might be possible to use regular Docker networking and the `GZ_RELAY` environment variable instead.)

The `dc_run_sim.sh` script handles X11 forwarding to the Gazebo container so that the GUI appears on screen.

Last used successfully on 2023-02-06 with `mbari/lrauv-gazebo-sim@sha256:d1ecb9c2f07149de1457814b1585809677181c176ce8dc4c1d4b30b972ca24c9`.
