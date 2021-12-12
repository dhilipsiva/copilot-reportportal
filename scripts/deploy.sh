env="${1:-test}"
for service in analyzer analyzer-train api db-scripts index jobs metrics-gatherer minio rabbitmq traefik uat ui
do
  ./scripts/copilot deploy -n $service -e $env
done
