import React from "react"
import PropTypes from "prop-types"
import styled from 'styled-components'
import {FlexCenter} from '../styled_components/default'
import {Box, Link, LinkWrapper, Logo, HiddenOptions, HiddenLink, VerticalLine} from '../styled_components/header/box'


class Header extends React.Component {
  state = {}
  async setCurrentCompany(id){
    
    let result = await axios.post(`/set_current_company.json`, {
      company_id: id
    });
    Turbolinks.visit("/")
  }

  render () {
    const { companies, user_scope, can_update_company, user_name } = this.props;
    const {config_menu_visibility} = this.state;
    return (
      <Box >
      	<Logo href={'/'}></Logo>
        <VerticalLine/>
        
        <div style={{display: 'flex', justifyContent: 'flex-end', flex: 1, margin: 30}}>
        	<FlexCenter>
            {user_scope == "saga_admin" && <React.Fragment>
              <Link href="/companies">Empresas</Link>
              <Link href="/users">Usuários</Link>
              <Link href="/admins/menu">Configuração Master</Link>
            </React.Fragment>}
            
        		
        	</FlexCenter>

          <FlexCenter>
            {user_scope == "company_user" && can_update_company && <React.Fragment>
              <Link href="/edit_company">Configuração</Link>
            </React.Fragment>}
            <VerticalLine/>
            {/*<Link>Notificações</Link>*/}
            <LinkWrapper>
              <img 
                src={'https://scontent.fsdu2-1.fna.fbcdn.net/v/t1.0-9/106129294_10219909951431634_9182770330003427384_n.jpg?_nc_cat=107&_nc_sid=09cbfe&_nc_eui2=AeHqFtMR-sPWRq9nHP6aoEVHVmNhkAguIvNWY2GQCC4i82gmtSjumL83BGlCoKwcFFJKaSfekFAiTfdqR_m4ySMH&_nc_ohc=uXT5zslDSXIAX9JRD7t&_nc_ht=scontent.fsdu2-1.fna&oh=64e1ad026dc2ce60b38c395baccaf002&oe=5F8BBFFB'} 
                style={{width: 50, height: 50, padding: 6, borderRadius: 50, border: '1px #e5e5e5 solid'}}
              />
              <div onClick={()=> this.setState({config_menu_visibility: !config_menu_visibility})}>
                <Link onClick={()=> this.setState({config_menu_visibility: !config_menu_visibility})}>{user_name}</Link>
                <i className={`fa fa-chevron-${config_menu_visibility ? "up" : "down"}`} style={{color: '#2a3170'}}/>
              </div>
              {config_menu_visibility && <HiddenOptions>
                <HiddenLink href="/edit_company" >
                  <Icon className={'fa fa-cog'}> </Icon>Configurações
                </HiddenLink>
                <HiddenLink href="/">
                  <Icon className={'fa fa-user'}> </Icon>Convidar Usuário
                </HiddenLink>
                <HiddenLink href="/">
                  <Icon className={'fa fa-user'}> </Icon>Tutorial
                </HiddenLink>
                <HiddenLink href="/users/sign_out" data-method="delete">
                  <Icon className={'fa fa-sign-out'}> </Icon>Sair
                </HiddenLink>
              </HiddenOptions>}
              
            </LinkWrapper>
          </FlexCenter>
        </div>
      </Box>
      
    );
  }
}

export default Header
const Icon = styled.i`
  margin-right: 10px
`
