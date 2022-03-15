"""
Simple locustfile that creates a single session to exec GET request on target API
"""
from random import randint
from locust import HttpUser, task, between


class InvokeDelay(HttpUser):
    """
    Client Class that is able to make requests to the target system
    """

    wait_time = between(0.5, 2)

    @task
    def invoke_delay(self):
        """
        Request API to sleep for random number of seconds
        """
        self.client.get(f"/delay?max_s={randint(1, 5)}")
