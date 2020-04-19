FROM anaconda3:v0
# ENV python=/root/anaconda3/bin/python3.7
# ENV jupyter=/root/anaconda3/bin/jupyter
ENV PATH="/root/anaconda3/bin:${PATH}"
COPY ./lab.sh /lab.sh
COPY ./TokenServer.py /TokenServer.py
COPY ./jupyter_notebook_config.py /jupyter_notebook_config.py
RUN /root/anaconda3/bin/jupyter notebook --generate-config && \
    cp /jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config
VOLUME [ "/data" ]
EXPOSE 8000/tcp
EXPOSE 3500/tcp
ENTRYPOINT [ "/bin/bash","/lab.sh" ]