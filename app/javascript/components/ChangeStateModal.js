import React from 'react';
import PropTypes from 'prop-types';
import { makeStyles } from '@material-ui/core/styles';
import Button from '@material-ui/core/Button';
import Avatar from '@material-ui/core/Avatar';
import List from '@material-ui/core/List';
import ListItem from '@material-ui/core/ListItem';
import ListItemAvatar from '@material-ui/core/ListItemAvatar';
import ListItemText from '@material-ui/core/ListItemText';
import DialogTitle from '@material-ui/core/DialogTitle';
import Dialog from '@material-ui/core/Dialog';
import DialogContent from '@material-ui/core/DialogContent';
import DialogActions from '@material-ui/core/DialogActions';
import Autocomplete from '@material-ui/lab/Autocomplete';
import Typography from '@material-ui/core/Typography';
import { blue } from '@material-ui/core/colors';
import TextField from '@material-ui/core/TextField';


 
export default class ChangeStateModal extends React.Component {
  state = {
    deliverymen: [],
    deliverymanId: this.props.deliverymanId
  }
  handleClose(state=null){
    const { onClose, selectedValue, open, balanceSheet } = this.props;
    const { deliverymanId } = this.state;
    onClose(deliverymanId, state);

  };

  setInputValue(inputValue){
    console.log(inputValue)
  }

  setDeliverymanId(id){
    // this.setState({deliverymanId: id})
    if(this.state.deliverymanId != id){
      this.setState({deliverymanId: id})
    }
    console.log(id)
  }
  
  async fetchDeliveryMen() {
    
    let result = await axios.get(`/deliverymen.json`);
    this.setState({deliverymen: result.data })  
    
  }

  canEditDeliveryMen(){
    return true
  }

  componentDidMount(){
    this.fetchDeliveryMen()
  }

  render(){
    const { onClose, selectedValue, open, balanceSheet, possible_states, order } = this.props;
    return (
      <Dialog onClose={()=> this.handleClose()} aria-labelledby="simple-dialog-title" open={open}>
        <DialogTitle id="simple-dialog-title">Pedido #123 </DialogTitle>
        
        <DialogContent>
          <Autocomplete
            id="combo-box-demo"
            options={this.state.deliverymen}
            disabled={!this.canEditDeliveryMen()}
            getOptionLabel={(option) => option.name}
            getOptionSelected={(option)=> this.setDeliverymanId(option.id)}
            onInputChange={(event, newInputValue) => {
              this.setInputValue(newInputValue);
            }}
            style={{ width: 300 }}
            renderInput={(params) => <TextField {...params} label="Entregador" variant="outlined" />}
          />
        </DialogContent>
        
        <DialogActions>
          {possible_states.map((state)=>{
            return <Button onClick={()=> this.handleClose(state)} color="primary">
              {translateState[state]}
            </Button>
          })}
          <Button onClick={()=> this.handleClose(order.state)} color="primary">
              Salvar
          </Button>
        </DialogActions>
        
        
      </Dialog>
    );
  }
  
}


const translateState = {
  pending: 'Pendente',
  on_way: 'A Caminho',
  completed: 'Concluir',
  canceled: 'Cancelar',
}