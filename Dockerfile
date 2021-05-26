FROM aubuchcl/mautic:latest as first

FROM nickisyourfan/bicycle-test:latest as second
RUN apk --update add net-tools bind-tools wget vim curl bash
RUN mkdir -p /usr/local/debug/first
COPY --from=first /var/www/html/* /usr/local/debug/first
CMD ["/bin/bash"]

