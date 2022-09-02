from pylenium.driver import Pylenium


BASE_URL = "https://saucedemo.com"


def login_as(py: Pylenium, username: str, password: str) -> None:
    py.visit(BASE_URL)
    py.get("#user-name").type(username)
    py.get("#password").type(password)
    py.get("#login-button").click()
