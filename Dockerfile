#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b XCRY-USERBOT https://github.com/JIYOXCRY/XCRY-USERBOT /home/XCRYUSERBOT/ \
    && chmod 777 /home/XCRYUSERBOT \
    && mkdir /home/XCRYUSERBOT/bin/

COPY ./sample_config.env ./config.env* /home/XCRYUSERBOT/

WORKDIR /home/XCRYUSERBOT/

RUN pip install -r requirements.txt

CMD ["bash","start"]
