package com.worklight.androidgap.jsonstore.database;

public enum DatabaseSchemaType
{
  BOOLEAN("boolean", "INTEGER"),  INTEGER("integer", "INTEGER"),  NUMBER("number", "REAL"),  STRING("string", "TEXT");
  
  private String mappedType;
  private String name;
  
  private DatabaseSchemaType(String paramString1, String paramString2)
  {
    name = paramString1;
    mappedType = paramString2;
  }
  
  protected static DatabaseSchemaType fromString(String paramString)
  {
    if (paramString.equals(BOOLEANname)) {
      return BOOLEAN;
    }
    if (paramString.equals(INTEGERname)) {
      return INTEGER;
    }
    if (paramString.equals(NUMBERname)) {
      return NUMBER;
    }
    if (paramString.equals(STRINGname)) {
      return STRING;
    }
    return null;
  }
  
  public String getMappedType()
  {
    return mappedType;
  }
  
  public String getName()
  {
    return name;
  }
}
