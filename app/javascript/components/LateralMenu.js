import React from "react";
import PropTypes from "prop-types";
import styled from "styled-components";
import { FlexCenter, ExpandButton } from "../styled_components/default";
import ColapsedItem from "./ColapsedItem";


import orderImage from 'Frameorder.svg'
import companyImage from 'Framecompany.svg'
import dashboardImage from 'Framedashboard.svg'
import bikeImage from 'Framebike.svg'

class LateralMenu extends React.Component {
  state = {
    activeItem: 'dashboard',
    collapsed: true,
    customParamLinks: [],
    expandItemSelected: ''
  };

  componentDidMount(){
    if (this.props.can_edit_contabil_pattern) {
      this.setState({customParamLinks: [
        { label: "Configurar Padrão", href: "/contabil_pattern/configure" },
        { label: "Formulas", href: "/formulas" },
        { label: "Formulas - Gráfico", href: "/charts" },
        { label: "Dashboard Widgets", href: "/front_dashboard_formulas" },
        { label: "Indicadores", href: "/indicators" },
      ]})
    }
  }
  
  setActiveItem = function(id) {
    this.setState({ activeItem: id });
    this.setState({collapsed: false})
  };

    
  activeInclude (path) {
    const urlPath = window.location.pathname
    if (urlPath === path) {
      return true
    }

    if (path === 'upload' && (urlPath === '/balance_sheets' || urlPath === '/cost_centers' || urlPath === '/budgets/upload')) {
      return true
    }

    if (path === 'parametrization' && (urlPath === '/contabil_pattern/configure' || urlPath === '/formulas' || urlPath === '/charts' ||
    urlPath === '/front_dashboard_formulas' || urlPath === '/indicators' || urlPath === '/balance_sheets/new')) {
      return true
    }
  }

  expandItem (item) {
    this.setState({ 
      expandItemSelected: item,
      collapsed: false
     })
  }

  toggleCollapse(){
    this.setState({collapsed: !this.state.collapsed})
  }

  render() {
    let { collapsed, expandItemSelected } = this.state;
    let {userRole} = this.props;
    
    return (
      <div style={{width: collapsed ? 100 : 260, transition: "all 300ms ease-in-out", overflow: "hidden"}}>
        {userRole == "admin" && 
        <React.Fragment>
          <ColapsedItem
            key={"Dashboard"}
            collapsed={collapsed}
            onClick={() => this.onClick("dashboard")}
            active={this.activeInclude("dashboard")}
            href="/"
            label="Dashboard"
            icoSrc={dashboardImage}
          />
          <ColapsedItem
            key={"Empresas"}
            collapsed={collapsed}
            onClick={() => this.onClick("dashboard")}
            active={this.activeInclude("dashboard")}
            href="/companies"
            label="Empresas"
            icoSrc={companyImage}
          />
          
          <ColapsedItem
            key={"Entregadores"}
            collapsed={collapsed}
            onClick={() => this.onClick("dashboard")}
            active={this.activeInclude("dashboard")}
            href="/deliverymen"
            label="Entregadores"
            icoSrc={bikeImage}
          />
        </React.Fragment>
        }
         <ColapsedItem
          key={"Pedidos"}
          collapsed={collapsed}
          onClick={() => this.onClick("dashboard")}
          active={this.activeInclude("dashboard")}
          href="/orders"
          label="Pedidos"
          icoSrc={orderImage}
        />
        

        {/* <ColapsedItem
           key={"Upload"}
           collapsed={collapsed}
           onClick={() => this.expandItem("upload")}
           active={this.activeInclude("upload")}
           expanded={expandItemSelected === 'upload'}
           label="Upload"
           icoSrc={menuUploadIcon}
           submenuLinks={[
             { label: "Balancete", href: "/balance_sheets" },
             { label: "Centro de custo", href: "/cost_centers" },
             { label: "Orçamento", href: "/budgets/upload" }
           ]}
         />*/}

        

        <ExpandButton onClick={()=> this.toggleCollapse()} active={collapsed}/>
      </div>
    );
  }
}

export default LateralMenu;
