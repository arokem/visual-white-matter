FROM andrewosh/binder-base

MAINTAINER Ariel Rokem <arokem@gmail.com>
USER root
RUN apt-get update && apt-get install -y xvfb
RUN pip install scikit-learn nibabel dipy xvfbwrapper ipywidgets
ADD https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_1.nii.gz /data/
ADD https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_1.nii.gz /data/
ADD https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_1.bvals /data/
ADD https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_2.bvals /data/
ADD https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_1.bvecs /data/
ADD https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_2.bvecs /data/
ADD https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_1.bvecs /data/
ADD https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_aparc-reduced.nii.gz /data/
ADD https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_t1_resamp.nii.gz /data/
