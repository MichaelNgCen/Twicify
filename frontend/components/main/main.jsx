import React from 'react';
import { Switch, Route } from 'react-router-dom';
import Home from '../home/home';
import { ProtectedRoute } from '../../util/route_util';
import NavbarContainer from '../navbar/navbar_container';
import SidebarContainer from '../sidebar/sidebar_container';
// import PlaylistItemContainer from '../playlist/playlist_item_container';

const Main = (props) => {
  return (
    <>
    <ProtectedRoute path="/" component={SidebarContainer} />
    <div id="main">
      <Route path="/" component={NavbarContainer} />
      <main className="main-content-container">
        <Switch>
        <ProtectedRoute exact path="/" component={Home} />
        {/* <ProtectedRoute path="/library/songs" component={PlaylistItemContainer} />
          <ProtectedRoute exact path="/playlists/:id" component={PlaylistItemContainer} /> */}
        </Switch>

      </main>
    </div>
    </>
  )
}

export default Main;