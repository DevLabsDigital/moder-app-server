 import styled from 'styled-components'

export const LateralMenuLink = styled.a`
  width: 183px;
  height: 59px;
  font-family: Roboto;
  font-size: 16px;
  font-weight: 500;
  letter-spacing: 0.8px;
  color: #617e94;
  align-items: center;
  padding: 0 37px;
  display: flex;
  text-decoration: none;
  cursor: pointer;
  ${props => props.active && `
    background-image: linear-gradient(to right, rgba(229, 229, 229, 0.5), #f5f5f5);
    border-left: 3px solid #31b7bc;
    color: #31b7bc;
  `}
  ${props => props.has_inconsistence && `
    color: darkred;
    overflow: hidden;
  `}

  &:hover {
    background-color: #31b7bc;
    color: #ffffff;
  }
`

export const SubMenuLink = styled.a`
  width: 183px;
  height: 59px;
  font-family: Roboto;
  font-size: 14px;
  font-weight: 500;
  letter-spacing: 0.8px;
  color: #617e94;
  align-items: center;
  margin-left: 75px;
  display: flex;
  border-bottom: 1px solid #eaeaea;
  text-decoration: none;

`


export const Animated = styled.div`
  transition: all 300ms ease-in-out;
`