






    function Welcome(props) {
        return <h1>Hello, {props.name}</h1>;
      }






      class Welcome extends React.Component {
        render() {
          return <h1>Hello, {this.props.name}</h1>;
        }
      }




      function Comment(props) {
        return (
          <div className="Comment">
            <div className="UserInfo">
              <img className="Avatar"
                src={props.author.avatarUrl}
                alt={props.author.name}
              />
              <div className="UserInfo-name">
                {props.author.name}
              </div>
            </div>
            <div className="Comment-text">
              {props.text}
            </div>
            <div className="Comment-date">
              {formatDate(props.date)}
            </div>
          </div>
        );
      }


      function Comment(props) {
        return (
          <div className="Comment">
            <UserInfo user={props.author} />
            <div className="Comment-text">
              {props.text}
            </div>
            <div className="Comment-date">
              {formatDate(props.date)}
            </div>
          </div>
        );
      }

      function UserInfo(props) {
        return (
          <div className="UserInfo">
            <Avatar user={props.user} />
            <div className="UserInfo-name">
              {props.user.name}
            </div>
          </div>
        );
      }

      function Avatar(props) {
        return (
          <img className="Avatar"
            src={props.user.avatarUrl}
            alt={props.user.name}
          />
        );
      }





      class View extends Component{
        constructor(){
          super();
          this.state={
            num:10
          }
        }
       //state={num:10} 直接做为实例属性也可以
      } 
    


      class Clock extends React.Component {
        constructor(props) {
          super(props);
          this.state = {date: new Date()};


          this.setState({
            date: new Date()
          });

          
          this.setState((state, props) => ({
            counter: state.counter + props.increment
          }));
          

        }
      
        render() {
          return (
            <div>
              <h1>Hello, world!</h1>
              <h2>It is {this.state.date.toLocaleTimeString()}.</h2>
            </div>
          );
        }
      }





      class Clock extends React.Component {
        constructor(props) {
          super(props);
          this.state = {date: new Date()};
        }

        //挂载
        componentDidMount() {
          this.timerID = setInterval(
            () => this.tick(),
            1000
          );
        }

        //卸载
        componentWillUnmount() {
          clearInterval(this.timerID);
        }

        tick() {
          this.setState({
            date: new Date()
          });
        }

        render() {
          return (
            <div>
              <h1>Hello, world!</h1>
              <h2>It is {this.state.date.toLocaleTimeString()}.</h2>
            </div>
          );
        }
      }

      ReactDOM.render(
        <Clock />,
        document.getElementById('root')
      );




      function ActionLink() {
        function handleClick(e) {
          e.preventDefault();
          console.log('The link was clicked.');
        }
      
        return (
          <a href="#" onClick={handleClick}>
            Click me
          </a>
        );
      }




      function WelcomeDialog() {
        return (
          <FancyBorder color="blue">
            <h1 className="Dialog-title">
              Welcome
            </h1>
            <p className="Dialog-message">
              Thank you for visiting our spacecraft!
            </p>
          </FancyBorder>
        );
      }


      function FancyBorder(props) {
        return (
          <div className={'FancyBorder FancyBorder-' + props.color}>
            {props.children}
          </div>
        );
      }





      