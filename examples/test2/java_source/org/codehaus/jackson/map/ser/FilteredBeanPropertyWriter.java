package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;

public abstract class FilteredBeanPropertyWriter
{
  public FilteredBeanPropertyWriter() {}
  
  public static BeanPropertyWriter constructViewBased(BeanPropertyWriter paramBeanPropertyWriter, Class<?>[] paramArrayOfClass)
  {
    if (paramArrayOfClass.length == 1) {
      return new SingleView(paramBeanPropertyWriter, paramArrayOfClass[0]);
    }
    return new MultiView(paramBeanPropertyWriter, paramArrayOfClass);
  }
  
  private static final class MultiView
    extends BeanPropertyWriter
  {
    protected final Class<?>[] _views;
    
    protected MultiView(BeanPropertyWriter paramBeanPropertyWriter, Class<?>[] paramArrayOfClass)
    {
      super();
      _views = paramArrayOfClass;
    }
    
    protected MultiView(MultiView paramMultiView, JsonSerializer<Object> paramJsonSerializer)
    {
      super(paramJsonSerializer);
      _views = _views;
    }
    
    public void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
      throws Exception
    {
      Class localClass = paramSerializerProvider.getSerializationView();
      if (localClass != null)
      {
        int i = 0;
        int j = _views.length;
        for (;;)
        {
          if ((i >= j) || (_views[i].isAssignableFrom(localClass)))
          {
            if (i != j) {
              break;
            }
            return;
          }
          i += 1;
        }
      }
      super.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider);
    }
    
    public BeanPropertyWriter withSerializer(JsonSerializer<Object> paramJsonSerializer)
    {
      return new MultiView(this, paramJsonSerializer);
    }
  }
  
  private static final class SingleView
    extends BeanPropertyWriter
  {
    protected final Class<?> _view;
    
    protected SingleView(BeanPropertyWriter paramBeanPropertyWriter, Class<?> paramClass)
    {
      super();
      _view = paramClass;
    }
    
    protected SingleView(SingleView paramSingleView, JsonSerializer<Object> paramJsonSerializer)
    {
      super(paramJsonSerializer);
      _view = _view;
    }
    
    public void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
      throws Exception
    {
      Class localClass = paramSerializerProvider.getSerializationView();
      if ((localClass == null) || (_view.isAssignableFrom(localClass))) {
        super.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider);
      }
    }
    
    public BeanPropertyWriter withSerializer(JsonSerializer<Object> paramJsonSerializer)
    {
      return new SingleView(this, paramJsonSerializer);
    }
  }
}
