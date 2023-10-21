#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b XCRY-UERSBOT https://github.com/JIYOXCRY/XCRY-UERSBOT /home/XCRY-UERSBOT/ \
    && chmod 777 /home/XCRY-UERSBOT \
    && mkdir /home/XCRY-UERSBOT/bin/

COPY ./sample_config.env ./config.env* /home/XCRY-UERSBOT/

WORKDIR /home/XCRY-UERSBOT/

RUN pip install -r requirements.txt

CMD ["bash","start"]
