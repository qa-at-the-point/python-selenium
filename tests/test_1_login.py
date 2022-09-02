from pylenium.driver import Pylenium
from sauce.login import login_as

    
def test_login_as_standard_user(py: Pylenium):
    login_as(py, "standard_user", "secret_sauce")
    assert py.contains("Products").should().be_visible()
