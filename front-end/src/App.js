import { useState, useEffect } from 'react';
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Registration from './pages/Registration';
import LoggedIn from './pages/LoggedIn';
import LoggedOut from './pages/LoggedOut';
import Home from './pages/Home';

function App() {
  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [currentUser, setCurrentUser] = useState(null);

  useEffect(() => {
    fetch("/me").then((res) => {
      if (res.ok) {
        res.json().then((user) => {
          setCurrentUser(user);
          setIsAuthenticated(true);
        });
      }
    });
  }, []);

  if (!isAuthenticated) {
    return <div></div>;
  }

  return (
    <div className="">
      <Router>
        <Switch>
          <Route>
            <Home
              exact
              path="/"
              component={Home}
            />
          </Route>
          <Router>
            <Registration
              path="/registration"
              component={Registration}
            />
          </Router>
          <Router>
            {false
                  ? <LoggedIn
                      path="/login"
                      component={LoggedIn}
                    />
                  : <LoggedOut
                      path="/logout"
                      component={LoggedOut}
                    />
            }
          </Router>
        </Switch>
      </Router>
    </div>
  );
}

export default App;
