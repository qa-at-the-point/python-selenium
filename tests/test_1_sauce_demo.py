from pylenium.driver import Pylenium

    
def test_login_with_standard_user(py: Pylenium):
    py.visit("https://saucedemo.com")
    py.get("#user-name").type("standard_user")
    py.get("#password").type("secret_sauce")
    py.get("#login-button").click()
    assert py.contains("Products").should().be_visible()
