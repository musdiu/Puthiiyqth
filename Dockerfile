#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b XCRY-UERSBOT https://github.com/JIYOXCRY/XCRY-UERSBOT /home/xcryuserbot/ \
    && chmod 777 /home/xcryuserbot \
    && mkdir /home/xcryuserbot/bin/

COPY ./sample_config.env ./config.env* /home/xcryuserbot/

WORKDIR /home/xcryuserbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
