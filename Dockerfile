FROM andrewosh/binder-base

MAINTAINER Ariel Rokem <arokem@gmail.com>
USER root
RUN apt-get update && apt-get install -y xvfb
RUN pip install scikit-learn nibabel dipy xvfbwrapper ipywidgets
RUN wget https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_1.nii.gz ./data
RUN wget https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_2.nii.gz ./data
RUN wget https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_1.bvals ./data
RUN wget https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_2.bvals ./data
RUN wget https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_1.bvecs ./data
RUN wget https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_2.bvecs ./data
RUN wget https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_1.bvecs ./data
RUN wget https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_aparc-reduced.nii.gz ./data
RUN wget https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_t1_resamp.nii.gz ./data
ADD ./data/
