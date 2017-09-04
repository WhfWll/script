package cn.dbox.core.bean;

public class Entrance
{
  public Entrance() {}
  
  public class EntranceRemind
  {
    public final String HOT = "hot";
    public final String HOT_CN = "hot_cn";
    public final String NEW = "new";
    public final String NONE = "none";
    public final String RED = "red";
    
    public EntranceRemind() {}
  }
  
  public static enum EntranceRemindEnum
  {
    static
    {
      NEW = new EntranceRemindEnum("NEW", 2);
    }
    
    private EntranceRemindEnum() {}
  }
  
  public static enum EntryReportType
  {
    static
    {
      ENTRY_IMP = new EntryReportType("ENTRY_IMP", 1);
    }
    
    private EntryReportType() {}
  }
}
