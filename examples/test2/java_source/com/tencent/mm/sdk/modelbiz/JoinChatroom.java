package com.tencent.mm.sdk.modelbiz;

import android.os.Bundle;
import com.tencent.mm.sdk.b.h;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelbase.BaseResp;

public class JoinChatroom
{
  private JoinChatroom() {}
  
  public static class Req
    extends BaseReq
  {
    public String chatroomNickName;
    public String extMsg;
    public String groupId;
    
    public Req() {}
    
    public boolean checkArgs()
    {
      return !h.h(groupId);
    }
    
    public int getType()
    {
      return 15;
    }
    
    public void toBundle(Bundle paramBundle)
    {
      super.toBundle(paramBundle);
      paramBundle.putString("_wxapi_join_chatroom_group_id", groupId);
      paramBundle.putString("_wxapi_join_chatroom_chatroom_nickname", chatroomNickName);
      paramBundle.putString("_wxapi_join_chatroom_ext_msg", extMsg);
    }
  }
  
  public static class Resp
    extends BaseResp
  {
    public String extMsg;
    
    public Resp() {}
    
    public Resp(Bundle paramBundle)
    {
      fromBundle(paramBundle);
    }
    
    public boolean checkArgs()
    {
      return true;
    }
    
    public void fromBundle(Bundle paramBundle)
    {
      super.fromBundle(paramBundle);
      extMsg = paramBundle.getString("_wxapi_join_chatroom_ext_msg");
    }
    
    public int getType()
    {
      return 15;
    }
    
    public void toBundle(Bundle paramBundle)
    {
      super.toBundle(paramBundle);
      paramBundle.putString("_wxapi_join_chatroom_ext_msg", extMsg);
    }
  }
}
