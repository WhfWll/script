package com.tencent.wxop.stat;

public class StatGameUser
  implements Cloneable
{
  private String a = "";
  private String b = "";
  private String c = "";
  
  public StatGameUser() {}
  
  public StatGameUser(String paramString1, String paramString2, String paramString3)
  {
    b = paramString1;
    a = paramString2;
    c = paramString3;
  }
  
  public StatGameUser clone()
  {
    try
    {
      StatGameUser localStatGameUser = (StatGameUser)super.clone();
      return localStatGameUser;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return null;
  }
  
  public String getAccount()
  {
    return b;
  }
  
  public String getLevel()
  {
    return c;
  }
  
  public String getWorldName()
  {
    return a;
  }
  
  public void setAccount(String paramString)
  {
    b = paramString;
  }
  
  public void setLevel(String paramString)
  {
    c = paramString;
  }
  
  public void setWorldName(String paramString)
  {
    a = paramString;
  }
  
  public String toString()
  {
    return "StatGameUser [worldName=" + a + ", account=" + b + ", level=" + c + "]";
  }
}
