# Use the official Grafana image as the base image
FROM grafana/grafana:latest

# Copy provisioning files
COPY provisioning/datasources /etc/grafana/provisioning/datasources
COPY provisioning/dashboards /etc/grafana/provisioning/dashboards
COPY dashboards /var/lib/grafana/dashboards

# Expose Grafana port
EXPOSE 3000

# Start Grafana
CMD ["grafana-server", "--homepath=/usr/share/grafana"]
