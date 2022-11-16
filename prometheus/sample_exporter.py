from prometheus_client import start_http_server, Gauge
import random
import time

g = Gauge('random_number_requests', 'Random Number Requests Gauge')

def process_request():
    """A dummy function that takes some time."""
    g.set(random.random())
    time.sleep(3)

if __name__ == '__main__':
    # Start up the server to expose the metrics.
    start_http_server(8083)
    # Generate some requests.
    while True:
        process_request()