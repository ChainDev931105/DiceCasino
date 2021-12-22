import React from "react";
import { render } from "react-dom";
import { ChakraProvider, useDisclosure } from '@chakra-ui/react'

class Human extends React.Component {
  constructor(props) {
    super(props);
    this.state = { name: "Nakanidfdfshi" };
  }

  render() {
    return <h2>{this.state.name}</h2>;
  }
}

render(<Human />, document.getElementById("root"));
