FROM stoplight/prism:4

COPY schema.yaml /usr/src/schema/

CMD [ "mock", "-h", "0.0.0.0", "/usr/src/schema/schema.yaml" ]
