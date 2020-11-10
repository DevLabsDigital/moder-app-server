 import styled from 'styled-components'
 import logo from "logo.png";

 export const Box =  styled.div`
  width: 100%;
  height: 100px;
  background-color: #f1f1f1;
  display: flex;
  align-items: center;

`
export const Logo = styled.image`
  width: 270px;
  height: 85%;
  background: url(${logo});
  background-size: 130px 57px;
  background-repeat: no-repeat;
  background-position: center;
`
export const VerticalLine = styled.div`
  width: 1px;
  height: 60%;
  background-color: #e5e5e5;
  margin-left: 5px;
  margin-right: 5px;
`
export const Link = styled.a`
  
  height: 16px;
  font-family: Roboto;
  font-size: 14px;
  font-weight: 500;
  letter-spacing: 0.7px;
  color: #2a3170;
  margin: 0  12.5px;
  text-decoration: none;

`

export const LinkWrapper = styled.div`
  display: flex;
  padding: 10px;
  justify-content: center;
  align-items: center;
  cursor: pointer;
`

export const HiddenOptions = styled.div`
  width: 198px;
  box-shadow: 2px 2px 10px 0 rgba(0, 0, 0, 0.1);
  border: solid 1px #e5e5e5;
  background-color: #f1f1f1;
  position: absolute;
  top: 73px;
  right: 0px;
  display: flex;
  flex-direction: column;

`

export const HiddenLink = styled.a`
  font-family: Roboto;
  font-size: 14px;
  letter-spacing: 0.7px;
  color: #2a3170;
  text-decoration: none;
  height: 51px;
  display: flex;
  justify-content: flex-start;
  align-items: center;
  border-bottom: 1px solid #e5e5e5;
  margin: 0;
  padding-left: 20px;

`