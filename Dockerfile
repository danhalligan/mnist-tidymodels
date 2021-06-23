FROM docker.io/rocker/ml:latest
RUN Rscript -e 'install.packages("tidymodels")'
RUN pip3 install numpy
RUN Rscript -e 'tensorflow::install_tensorflow()'
RUN apt-get update && apt-get install -y libglpk-dev
RUN Rscript -e 'install.packages("kknn")'
RUN Rscript -e 'install.packages("ranger")'
RUN Rscript -e 'install.packages("embed")'
RUN Rscript -e 'install.packages("neuralnet")'
RUN apt-get install -y libxt-dev
RUN Rscript -e 'install.packages("abind")'
RUN Rscript -e 'install.packages("viridis")'
