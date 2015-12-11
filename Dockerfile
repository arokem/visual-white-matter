FROM andrewosh/binder-base

MAINTAINER Ariel Rokem <arokem@gmail.com>

USER root

# Add dependencies:
RUN pip install scikit-learn nibabel dipy

USER main

# script for xvfb-run.  all docker commands will effectively run under this via
# the entrypoint
RUN printf "#\041/bin/sh \n rm -f /tmp/.X99-lock && xvfb-run -s '-screen 0 1600x1200x16' \$@" >> /usr/local/bin/xvfbrun.sh && \
    chmod +x /usr/local/bin/xvfbrun.sh

# note we also use xvfb which is required for viz
ENTRYPOINT ["xvfbrun.sh"]
