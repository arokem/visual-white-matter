FROM andrewosh/binder-base

MAINTAINER Ariel Rokem <arokem@gmail.com>
USER root
RUN apt-get update && apt-get install -y xvfb python-vtk
RUN pip install scikit-learn nibabel dipy xvfbwrapper ipywidgets
ADD https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_1.nii.gz /home/main/notebooks/data/
ADD https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_2.nii.gz /home/main/notebooks/data/
ADD https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_1.bvals /home/main/notebooks/data/
ADD https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_2.bvals /home/main/notebooks/data/
ADD https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_1.bvecs /home/main/notebooks/data/
ADD https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_b2000_2.bvecs /home/main/notebooks/data/
ADD https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_aparc-reduced.nii.gz /home/main/notebooks/data/
ADD https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_t1_resamp.nii.gz /home/main/notebooks/data/
ADD https://stacks.stanford.edu/file/druid:ng782rw8378/SUB1_LV1.nii.gz /home/main/notebooks/data/
ADD https://raw.githubusercontent.com/arokem/xvfbmagic/master/xvfbmagic.py /home/main/notebooks/
