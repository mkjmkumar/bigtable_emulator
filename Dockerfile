FROM google/cloud-sdk:latest
RUN apt-get -y update && apt-get -y upgrade &&  apt-get -y dist-upgrade &&  apt-get -y autoremove

COPY docker_entrypoint.sh docker_entrypoint.sh
COPY start_emulator.sh start_emulator.sh
COPY setup_bigtable.sh setup_bigtable.sh
COPY creds_dummy.json creds_dummy.json
COPY cbtrc root/.cbtrc

EXPOSE 8086

RUN export CLOUDSDK_CORE_DISABLE_PROMPTS=1

RUN ["chmod", "+x", "./docker_entrypoint.sh" ]
RUN ["chmod", "+x", "./start_emulator.sh" ]
RUN ["chmod", "+x", "./setup_bigtable.sh" ]

CMD ./docker_entrypoint.sh