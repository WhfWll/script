package org.apache.cordova;

public class AuthenticationToken
{
  private String password;
  private String userName;
  
  public AuthenticationToken() {}
  
  public String getPassword()
  {
    return password;
  }
  
  public String getUserName()
  {
    return userName;
  }
  
  public void setPassword(String paramString)
  {
    password = paramString;
  }
  
  public void setUserName(String paramString)
  {
    userName = paramString;
  }
}
