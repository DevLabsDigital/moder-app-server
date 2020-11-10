import React from "react"
import ReactTooltip from 'react-tooltip';
import PropTypes from "prop-types"
import styled from 'styled-components'
import {FlexCenter} from '../styled_components/default'
import {LateralMenuLink, SubMenuLink, Animated} from '../styled_components/lateral_menu'
class ColapsedItem extends React.Component {
  state = {subMenuVisible: false}

  onClick(){
    this.props.onClick();
  }

  render () {
    const {subMenuVisible} = this.state;
    const {submenuLinks, active, expanded, icoSrc, label, href, collapsed, has_inconsistence} = this.props;
    
    return (
      <Animated
        data-tip data-for={label} 
        title={ has_inconsistence ? "Existe um ou mais arquivos que não estão corretos" : ""} 
        styled={{ width: collapsed ? 100 : 260 }}>
        <LateralMenuLink has_inconsistence={has_inconsistence} href={href} active={active} onClick={()=> this.onClick()}>
          {has_inconsistence && <i className={"fa fa-exclamation"} />}
          <img style={{marginRight: 19, filter: `${has_inconsistence ? 'brightness(70%) saturate(2.25) hue-rotate(132deg)' : ''}` }} src={icoSrc}/>
          { collapsed && 
            (<ReactTooltip id={label} place="right" type="dark" effect="solid">
              <h4>{label}</h4>
            </ReactTooltip>)
          }
          {!collapsed && label}
        </LateralMenuLink>
        {submenuLinks && <div style={{
            height: expanded ? (60 * submenuLinks.length) : 0, 
            overflow: 'hidden', 
            transition: '0.3s all ease-in-out'}}>
            {submenuLinks && submenuLinks.map((item, index)=>
              <SubMenuLink key={index} href={item.href} >{item.label}</SubMenuLink>
            )}
          </div>}
      </Animated>
      
    );
  }
}

export default ColapsedItem
