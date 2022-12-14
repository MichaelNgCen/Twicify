import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router-dom';
import { debounce } from "lodash";

class Navbar extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      hideDropDown: true,
      scrollTop: null,
      scrollHeight: null,
      opacity: 0,
      content: null,
      searchQuery: "",
    }
    
    this.dropDown = React.createRef();
    this.handleDropDown = this.handleDropDown.bind(this);
    this.convertOpacity = this.convertOpacity.bind(this);
    this.renderContent = this.renderContent.bind(this);
    this.renderPlayButton = this.renderPlayButton.bind(this);
    this.updateSearch = this.updateSearch.bind(this);
    this.search = debounce(this.search.bind(this), 400);
    this.renderPlayPause = this.renderPlayPause.bind(this);
    this.handlePlay = this.handlePlay.bind(this);
  }

  componentDidMount() {
    const content = document.getElementsByClassName('main-content-container')[0];
    const currentUserId = this.props.currentUserId;
    const pathName = this.props.location.pathname.split('/');
    const location = pathName[1];
    const pageId = pathName[2];

    content.scrollTo({ top: 0, behavior: "auto" });
    
    content.onscroll = () => {
      const { scrollTop, scrollHeight } = content;
      this.setState ({ scrollTop, scrollHeight });
      this.convertOpacity();
    }
    
    this.dropDownListener = e => {
      if (this.dropDown && !this.dropDown.contains(e.target)) {
        this.setState({
          hideDropDown: true
        });
      }
    }

    this.props.loading();

    this.setState({
      searchQuery: ""
    });
    
    switch (location) {
      case "playlists":
        this.props.fetchPlaylist(pageId).then(() => this.renderContent());
        break;
      case "albums":
        this.props.fetchAlbum(pageId).then(() => this.renderContent());
        break;
      case "artists":
        this.props.fetchArtist(pageId).then(() => this.renderContent());
        break;
      case "library":
        if (pageId === "songs") {
          this.props.fetchLikedSongs(currentUserId).then(() => this.renderContent());
        } else if (pageId === "playlists") {
          this.props.fetchLikedSongsPreview(currentUserId).then(() => this.renderContent());
        } else if (pageId === "artists") {
          this.props.fetchLikedArtists(currentUserId).then(() => this.renderContent());
        } else if (pageId === "albums") {
          this.props.fetchLikedAlbums(currentUserId).then(() => this.renderContent());
        }
      case "search":
        if (location === "search" && this.state.searchQuery === "") {
          this.props.receiveSearchPage();
        }
      case "genres":
        if (pageId === "kpop") {
          this.props.fetchKpop(currentUserId).then(() => this.renderContent());
        } else if (pageId === "rap") {
          this.props.fetchRap(currentUserId).then(() => this.renderContent());
        } else if (pageId === "rock") {
          this.props.fetchRock(currentUserId).then(() => this.renderContent());
        } else if (pageId === "Anime") {
          this.props.fetchAnime(currentUserId).then(() => this.renderContent());
        }
      default:
        if (location === "") {
          this.props.fetchHome().then(() => this.renderContent());
        }
        break;
    }
        
    document.addEventListener('click', this.dropDownListener, false);
  }
      
  componentDidUpdate(prevProps) {
    if (this.props.location !== prevProps.location) {
      const currentUserId = this.props.currentUserId;
      const content = document.getElementsByClassName('main-content-container')[0];
      const pathName = this.props.location.pathname.split('/');
      const location = pathName[1];
      const pageId = pathName[2];
  
      content.scrollTo({ top: 0, behavior: "auto" });
      
      content.onscroll = () => {
        const { scrollTop, scrollHeight } = content;
        this.setState ({ scrollTop, scrollHeight });
        this.convertOpacity();
      }
      
      this.dropDownListener = e => {
        if (this.dropDown && !this.dropDown.contains(e.target)) {
          this.setState({
            hideDropDown: true
          });
        }
      }
      
      this.setState({
        searchQuery: ""
      });

      switch (location) {
        case "playlists":
          console.log(this.props.playlists);
          break;
        case "albums": 
          this.props.fetchAlbum(pageId).then(() => this.renderContent());
          break;
        case "artists":
          this.props.fetchArtist(pageId).then(() => this.renderContent());
          break;
        case "library":
          if (pageId === "songs") {
            this.props.fetchLikedSongs(currentUserId).then(() => this.renderContent());
          } else if (pageId === "playlists") {
            this.props.fetchLikedSongsPreview(currentUserId);
            this.props.fetchLikedPlaylists(currentUserId).then(() => this.renderContent());
          } else if (pageId === "artists") {
            this.props.fetchLikedArtists(currentUserId).then(() => this.renderContent());
          } else if (pageId === "albums") {
            this.props.fetchLikedAlbums(currentUserId).then(() => this.renderContent());
          }
        case "search":
          if (location === "search" && this.state.searchQuery === "") {
            this.props.receiveSearchPage();
          }
        case "genres":
          if (pageId === "kpop") {
            this.props.fetchKpop().then(() => this.renderContent());
          } else if (pageId === "rap") {
            this.props.fetchRap().then(() => this.renderContent());
          } else if (pageId === "rock") {
            this.props.fetchRock().then(() => this.renderContent());
          } else if (pageId === "anime") {
            this.props.fetchAnime().then(() => this.renderContent());
          }
        default:
          if (location === "") {
            this.props.fetchHome().then(() => this.renderContent());
          }
          break;
      }

      document.addEventListener('click', this.dropDownListener, false);
    }
  }

  componentWillUnmount() {
    document.removeEventListener('click', this.dropDownListener);
  }

  handleDropDown(e) {
    this.setState({
      hideDropDown: !this.state.hideDropDown
    })
  }

  renderContent() {
    const { playlists, albums, artists } = this.props;
    const pathName = this.props.location.pathname.split('/');
    const location = pathName[1];
    const pageId = pathName[2];

    switch (location) {
      case "playlists":
        this.setState({ content: playlists[pageId].name });
        break;
      case "albums":
        this.setState({ content: albums[pageId].title });
        break;
      case "artists":
        this.setState({ content: artists[pageId].name });
        break;
      case "library":
        if (pageId === "songs") {
          this.setState({ content: "Liked Songs" });
        } else {
          this.setState({ content: null });
        }
      case "genres":
        if (pageId === "kpop") {
          this.setState({content: "K-pop" });
        } else if (pageId === "rap") {
          this.setState({ content: "Rap" });
        } else if (pageId === "rock") {
          this.setState({ content: "Rock" });
        } else if (pageId === "anime") {
          this.setState({ content: "Anime" });
        }
        break;
      default:
        this.setState({ content: null })
        break;
    }
  }

  renderPlayButton() {
    const pathName = this.props.location.pathname.split('/');
    const location = pathName[1];
    const pageId = pathName[2];

    switch (location) {
      case "":
        return "hidden"
      case "playlists":
        return "nav-play-button"
      case "albums":
        return "nav-play-button"
      case "artists":
        return "nav-play-button"
      case "library":
        if (pageId === "songs") {
          return "nav-play-button"
        } else {
          return "hidden"
        }
      case "search":
        return "hidden"
      case "genres":
        return "hidden"
      default:
        break;
    }
  }

  convertOpacity() {
    const { scrollTop, scrollHeight } = this.state;
    const path = this.props.location.pathname;
    const pathName = path.split('/');
    const location = pathName[1];
    const pageId = pathName[2];

    let oldRange, newRange, converted;

    if ((location === "library" && pageId !== "songs") || location === "search") {
      oldRange = (scrollHeight - 20);
      newRange = (10 - 1);
      converted = (((scrollTop - 20) * newRange) / oldRange);
    } else if (location === "artists") {
      oldRange = (scrollHeight - 20);
      newRange = (10 - 1);
      converted = (((scrollTop - 20) * newRange) / oldRange);
    } else {      
      oldRange = (scrollHeight - 140);
      newRange = (10 - 1);
      converted = (((scrollTop - 140) * newRange) / oldRange);
    }

    this.setState({ opacity: converted })
  }

  updateSearch(e) {
    const searchQuery = e.target.value;

    this.setState({
      searchQuery
    })

    this.search();
  }

  search() {
    const { fetchSearchResults, receiveSearchPage } = this.props;
    const searchQuery = this.state.searchQuery;
    searchQuery === "" ? receiveSearchPage() : fetchSearchResults(searchQuery);
  }

  handlePlay() {
    const {
      isPlaying,
      currentSong,
      currentSongIndex,
      currentQueueLocation,
      location,
      pageQueue,
      fetchPage,
      playSong,
      pauseSong,
    } = this.props;
  
    if (!isPlaying) {
      if (currentSong === null || currentQueueLocation !== location.pathname) {
        fetchPage(pageQueue, location.pathname);
      } else {
        playSong(currentSong, currentSongIndex, pageQueue, location.pathname);
        const audio = document.getElementById("audio");
        audio.play();
      }
    } else if (currentQueueLocation !== location.pathname) {
      fetchPage(pageQueue, location.pathname);
    } else {
      pauseSong();
      const audio = document.getElementById("audio");
      audio.pause();
    }
  }
  
  renderPlayPause() {
    const {
      isPlaying,
      currentQueueLocation,
      location,
    } = this.props;

    const playButton = (
      <img
        className={this.renderPlayButton()}
        src={window.playButton}
        onClick={this.handlePlay}/>
    )

    const pauseButton = (
      <img
        className={this.renderPlayButton()}
        src={window.pauseButton}
        onClick={this.handlePlay} />
    )

    if (currentQueueLocation === location.pathname) {
      if (isPlaying) {
        return pauseButton;
      } else {
        return playButton;
      }
    } else {
      return playButton;
    }
  }

  render() {
    const backgroundColor = { backgroundColor: `hsla(0, 0%, 13%, ${this.state.opacity})`}
    const path = this.props.location.pathname;
    const pathName = path.split('/');
    const location = pathName[1];
    const pageId = pathName[2];

    return (
      <nav className="navbar" style={backgroundColor}>
        <div className="nav-content-container">
          
          <div className="navbar-content">
            
            <h1 className={this.state.scrollTop > 254 ? "navbar-title" : "hide-navbar-title"}>
              {this.renderPlayPause()}
              {this.state.content}
            </h1>
            <nav className={(location === "library" && pageId !== "songs") ? "library-nav" : "hidden"}>
              <ul className="library-selector">
               
              </ul>
            </nav>

            <div className={ location === "search" ? "search-input-container" : "hidden" }>

            </div>
          </div>
        </div>

        <div className="user-dropdown" onClick={() => this.handleDropDown()} ref={div => this.dropDown = div}>
          <button>
            <span className="user-dropdown-text"> {this.props.currentUsername} </span>
            {this.state.hideDropDown ? <i className="fas fa-caret-down"></i> : <i className="fas fa-caret-up"></i>}
          </button>

          {!this.state.hideDropDown && <div className="user-dropdown-options" onClick={e => e.stopPropagation()}>
            <div className="user-dropdown-option" onClick={() => window.open("https://github.com/MichaelNgCen/Twicify", "_blank")} >
              <span>GitHub</span>
              <i className="fab fa-github"></i>
            </div>

            <div className="user-dropdown-option" onClick={() => window.open("https://www.linkedin.com/in/michaelngcen/", "_blank")} >
              <span>LinkedIn</span>
                <i className="fab fa-linkedin"></i>
            </div>

            <div className="user-dropdown-option" onClick={() => window.open("https://www.instagram.com/michaelngcen/", "_blank")} >
              <span>Instagram</span>
                <i className="fab fa-instagram"></i>
            </div>

            <div className="user-dropdown-option" onClick={() => window.open("https://open.spotify.com/", "_blank")} >
              <span>Spotify</span>
                <i className="fas fa-user-circle"></i>
            </div>

            <div
              id="logout-dropdown"
              onClick={this.props.logout}>Log out</div>
          </div>}
        </div>
      </nav>
    );
  }
}
 
export default withRouter(Navbar);