from locust import HttpUser, task


# class BookingAppLoadTesting(HttpUser):

#     @task
#     def loadtest_booking_get_list(self):
#         self.client.get(url='/bookings')


# class MoviesAppLoadTesting(HttpUser):
#     @task
#     def load_test_movies_get_list(self):
#         self.client.get('/movies')

class ContentPlatform(HttpUser):
    def on_start(self):
        """ on_start is called when a Locust start before any task is scheduled """
        self.client.verify = False

    @task
    def check_calendar(self):
        self.client.get("/internal_api/v1/cp/calendar/current-time", headers={
                        "token": "1aa2b0f412cc8e2baf5c8feff5dd4bef4e18d0d636dbe19368fa6b9a2b44986f"})

    @task
    def check_cinema(self):
        self.client.get(
            "internal_api/v1/cp/movies/cinemas_by_movie?limit=1&skip=0&movie=Bà Hoàng Nói Dối", headers={
                "token": "1aa2b0f412cc8e2baf5c8feff5dd4bef4e18d0d636dbe19368fa6b9a2b44986f"})
