FROM ubuntu

RUN apt-get update -qq --fix-missing
RUN apt-get install -qq -y wget unzip
RUN wget -q -O bowtie2.zip https://sourceforge.net/projects/bowtie-bio/files/bowtie2/2.2.9/bowtie2-2.2.9-linux-x86_64.zip/download 
RUN unzip bowtie2.zip -d /opt/
RUN ln -s /opt/bowtie2-2.2.9/bowtie2 /opt/bowtie2
RUN rm bowtie2.zip

ENV PATH $PATH:/opt/bowtie2
