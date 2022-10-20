import React from "react";
import ChangeStateModal from './ChangeStateModal'

class EditOrder extends React.Component {
  
  constructor(props) {
    super(props);
    this.state = {
      opened: this.props.open,
      balanceSheet: {}
    }
    
  }

  handleClickOpen(){
    this.setState({opened: true});
  };

  async handleClose(deliveryman_id, state){
    const {order} = this.props;

    this.setState({opened: false});
    
    if(state){
      let result = await axios.put(`/orders/${order.id}.json`,{
        order:{
          deliveryman_id,
          state  
        }
      })  
      location.reload();
    }
    
    


  };

  render() {
    
    return (
      <div>
        <i className={'fa fa-eye'} style={{cursor: 'pointer'}} onClick={()=> this.handleClickOpen()}></i>
        <ChangeStateModal {...this.props}  open={this.state.opened} onClose={this.handleClose.bind(this)} />
      </div>
    );
  }
}

export default EditOrder;
