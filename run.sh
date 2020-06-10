#!/bin/sh

while :
do
  /opt/r53dyndns/r53dyndns.py --verbose --record $ROUTE53_DOMAIN_A_RECORD --ip_of_hostname $IP_OF_HOSTNAME
  echo "Sleeping for $ROUTE53_UPDATE_FREQUENCY seconds..."
  sleep $ROUTE53_UPDATE_FREQUENCY
done
