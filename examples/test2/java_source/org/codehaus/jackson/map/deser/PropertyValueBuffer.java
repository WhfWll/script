package org.codehaus.jackson.map.deser;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;

public final class PropertyValueBuffer
{
  private PropertyValue _buffered;
  final DeserializationContext _context;
  final Object[] _creatorParameters;
  private int _paramsNeeded;
  final JsonParser _parser;
  
  public PropertyValueBuffer(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, int paramInt)
  {
    _parser = paramJsonParser;
    _context = paramDeserializationContext;
    _paramsNeeded = paramInt;
    _creatorParameters = new Object[paramInt];
  }
  
  public boolean assignParameter(int paramInt, Object paramObject)
  {
    _creatorParameters[paramInt] = paramObject;
    paramInt = _paramsNeeded - 1;
    _paramsNeeded = paramInt;
    return paramInt <= 0;
  }
  
  public void bufferAnyProperty(SettableAnyProperty paramSettableAnyProperty, String paramString, Object paramObject)
  {
    _buffered = new PropertyValue.Any(_buffered, paramObject, paramSettableAnyProperty, paramString);
  }
  
  public void bufferMapProperty(Object paramObject1, Object paramObject2)
  {
    _buffered = new PropertyValue.Map(_buffered, paramObject2, paramObject1);
  }
  
  public void bufferProperty(SettableBeanProperty paramSettableBeanProperty, Object paramObject)
  {
    _buffered = new PropertyValue.Regular(_buffered, paramObject, paramSettableBeanProperty);
  }
  
  protected PropertyValue buffered()
  {
    return _buffered;
  }
  
  protected final Object[] getParameters(Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject != null)
    {
      int i = 0;
      int j = _creatorParameters.length;
      while (i < j)
      {
        if (_creatorParameters[i] == null)
        {
          Object localObject = paramArrayOfObject[i];
          if (localObject != null) {
            _creatorParameters[i] = localObject;
          }
        }
        i += 1;
      }
    }
    return _creatorParameters;
  }
}
