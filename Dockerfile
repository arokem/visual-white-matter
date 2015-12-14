FROM andrewosh/binder-base

MAINTAINER Ariel Rokem <arokem@gmail.com>

USER root

# Add dependencies:
RUN pip install scikit-learn nibabel dipy xvfbwrapper
RUN apt-get update && apt-get install xvfb
RUN curl https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_1.nii.gz
RUN curl https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_2.nii.gz
RUN curl https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_1.bvals
RUN curl https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_2.bvals
RUN curl https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_1.bvecs
RUN curl https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_2.bvecs
RUN curl https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_1.bvecs
RUN curl https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_aparc-reduced.nii.gz
RUN curl https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_t1_resamp.nii.gz
