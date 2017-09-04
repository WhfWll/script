package org.codehaus.jackson.map.ser;

import java.io.IOException;
import java.lang.reflect.Type;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonMappingException.Reference;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.ResolvableSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.node.ObjectNode;
import org.codehaus.jackson.schema.JsonSchema;
import org.codehaus.jackson.schema.SchemaAware;
import org.codehaus.jackson.type.JavaType;

public class BeanSerializer
  extends SerializerBase<Object>
  implements ResolvableSerializer, SchemaAware
{
  protected static final BeanPropertyWriter[] NO_PROPS = new BeanPropertyWriter[0];
  protected final AnyGetterWriter _anyGetterWriter;
  protected final BeanPropertyWriter[] _filteredProps;
  protected final Object _propertyFilterId;
  protected final BeanPropertyWriter[] _props;
  
  public BeanSerializer(Class<?> paramClass, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter1, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter2, AnyGetterWriter paramAnyGetterWriter, Object paramObject)
  {
    super(paramClass);
    _props = paramArrayOfBeanPropertyWriter1;
    _filteredProps = paramArrayOfBeanPropertyWriter2;
    _anyGetterWriter = paramAnyGetterWriter;
    _propertyFilterId = paramObject;
  }
  
  protected BeanSerializer(BeanSerializer paramBeanSerializer)
  {
    this(_handledType, _props, _filteredProps, _anyGetterWriter, _propertyFilterId);
  }
  
  public BeanSerializer(JavaType paramJavaType, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter1, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter2, AnyGetterWriter paramAnyGetterWriter, Object paramObject)
  {
    super(paramJavaType);
    _props = paramArrayOfBeanPropertyWriter1;
    _filteredProps = paramArrayOfBeanPropertyWriter2;
    _anyGetterWriter = paramAnyGetterWriter;
    _propertyFilterId = paramObject;
  }
  
  public static BeanSerializer createDummy(Class<?> paramClass)
  {
    return new BeanSerializer(paramClass, NO_PROPS, null, null, null);
  }
  
  protected BeanPropertyFilter findFilter(SerializerProvider paramSerializerProvider)
    throws JsonMappingException
  {
    Object localObject = _propertyFilterId;
    paramSerializerProvider = paramSerializerProvider.getFilterProvider();
    if (paramSerializerProvider == null) {
      throw new JsonMappingException("Can not resolve BeanPropertyFilter with id '" + localObject + "'; no FilterProvider configured");
    }
    paramSerializerProvider = paramSerializerProvider.findFilter(localObject);
    if (paramSerializerProvider == null) {
      throw new JsonMappingException("No filter configured with id '" + localObject + "' (type " + localObject.getClass().getName() + ")");
    }
    return paramSerializerProvider;
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    throws JsonMappingException
  {
    ObjectNode localObjectNode1 = createSchemaNode("object", true);
    ObjectNode localObjectNode2 = localObjectNode1.objectNode();
    int i = 0;
    if (i < _props.length)
    {
      BeanPropertyWriter localBeanPropertyWriter = _props[i];
      paramType = localBeanPropertyWriter.getSerializationType();
      label51:
      Object localObject1;
      if (paramType == null)
      {
        paramType = localBeanPropertyWriter.getGenericPropertyType();
        Object localObject2 = localBeanPropertyWriter.getSerializer();
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          localObject2 = localBeanPropertyWriter.getRawSerializationType();
          localObject1 = localObject2;
          if (localObject2 == null) {
            localObject1 = localBeanPropertyWriter.getPropertyType();
          }
          localObject1 = paramSerializerProvider.findValueSerializer((Class)localObject1, localBeanPropertyWriter);
        }
        if (!(localObject1 instanceof SchemaAware)) {
          break label148;
        }
      }
      label148:
      for (paramType = ((SchemaAware)localObject1).getSchema(paramSerializerProvider, paramType);; paramType = JsonSchema.getDefaultSchemaNode())
      {
        localObjectNode2.put(localBeanPropertyWriter.getName(), paramType);
        i += 1;
        break;
        paramType = paramType.getRawClass();
        break label51;
      }
    }
    localObjectNode1.put("properties", localObjectNode2);
    return localObjectNode1;
  }
  
  public void resolve(SerializerProvider paramSerializerProvider)
    throws JsonMappingException
  {
    int i;
    int j;
    label18:
    BeanPropertyWriter localBeanPropertyWriter;
    if (_filteredProps == null)
    {
      i = 0;
      j = 0;
      int k = _props.length;
      if (j >= k) {
        break label240;
      }
      localBeanPropertyWriter = _props[j];
      if (!localBeanPropertyWriter.hasSerializer()) {
        break label56;
      }
    }
    for (;;)
    {
      j += 1;
      break label18;
      i = _filteredProps.length;
      break;
      label56:
      Object localObject1 = localBeanPropertyWriter.getSerializationType();
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject1 = paramSerializerProvider.constructType(localBeanPropertyWriter.getGenericPropertyType());
        localObject2 = localObject1;
        if (!((JavaType)localObject1).isFinal())
        {
          if ((!((JavaType)localObject1).isContainerType()) && (((JavaType)localObject1).containedTypeCount() <= 0)) {
            continue;
          }
          localBeanPropertyWriter.setNonTrivialBaseType((JavaType)localObject1);
          continue;
        }
      }
      JsonSerializer localJsonSerializer = paramSerializerProvider.findValueSerializer((JavaType)localObject2, localBeanPropertyWriter);
      localObject1 = localJsonSerializer;
      if (((JavaType)localObject2).isContainerType())
      {
        localObject2 = (TypeSerializer)((JavaType)localObject2).getContentType().getTypeHandler();
        localObject1 = localJsonSerializer;
        if (localObject2 != null)
        {
          localObject1 = localJsonSerializer;
          if ((localJsonSerializer instanceof ContainerSerializerBase)) {
            localObject1 = ((ContainerSerializerBase)localJsonSerializer).withValueTypeSerializer((TypeSerializer)localObject2);
          }
        }
      }
      localObject2 = localBeanPropertyWriter.withSerializer((JsonSerializer)localObject1);
      _props[j] = localObject2;
      if (j < i)
      {
        localObject2 = _filteredProps[j];
        if (localObject2 != null) {
          _filteredProps[j] = ((BeanPropertyWriter)localObject2).withSerializer((JsonSerializer)localObject1);
        }
      }
    }
    label240:
    if (_anyGetterWriter != null) {
      _anyGetterWriter.resolve(paramSerializerProvider);
    }
  }
  
  public final void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    paramJsonGenerator.writeStartObject();
    if (_propertyFilterId != null) {
      serializeFieldsFiltered(paramObject, paramJsonGenerator, paramSerializerProvider);
    }
    for (;;)
    {
      paramJsonGenerator.writeEndObject();
      return;
      serializeFields(paramObject, paramJsonGenerator, paramSerializerProvider);
    }
  }
  
  protected void serializeFields(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    BeanPropertyWriter[] arrayOfBeanPropertyWriter;
    if ((_filteredProps != null) && (paramSerializerProvider.getSerializationView() != null)) {
      arrayOfBeanPropertyWriter = _filteredProps;
    }
    int k;
    for (;;)
    {
      int j = 0;
      k = 0;
      int i = 0;
      try
      {
        int m = arrayOfBeanPropertyWriter.length;
        for (;;)
        {
          if (i < m)
          {
            BeanPropertyWriter localBeanPropertyWriter = arrayOfBeanPropertyWriter[i];
            if (localBeanPropertyWriter != null)
            {
              j = i;
              k = i;
              localBeanPropertyWriter.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider);
            }
            i += 1;
            continue;
            arrayOfBeanPropertyWriter = _props;
            break;
          }
        }
        j = i;
        k = i;
        if (_anyGetterWriter != null)
        {
          j = i;
          k = i;
          _anyGetterWriter.getAndSerialize(paramObject, paramJsonGenerator, paramSerializerProvider);
        }
        return;
      }
      catch (Exception localException)
      {
        if (j == arrayOfBeanPropertyWriter.length) {}
        for (paramJsonGenerator = "[anySetter]";; paramJsonGenerator = arrayOfBeanPropertyWriter[j].getName())
        {
          wrapAndThrow(paramSerializerProvider, localException, paramObject, paramJsonGenerator);
          return;
        }
      }
      catch (StackOverflowError paramJsonGenerator)
      {
        paramSerializerProvider = new JsonMappingException("Infinite recursion (StackOverflowError)");
        if (k != arrayOfBeanPropertyWriter.length) {}
      }
    }
    for (paramJsonGenerator = "[anySetter]";; paramJsonGenerator = arrayOfBeanPropertyWriter[k].getName())
    {
      paramSerializerProvider.prependPath(new JsonMappingException.Reference(paramObject, paramJsonGenerator));
      throw paramSerializerProvider;
    }
  }
  
  protected void serializeFieldsFiltered(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    BeanPropertyWriter[] arrayOfBeanPropertyWriter;
    if ((_filteredProps != null) && (paramSerializerProvider.getSerializationView() != null)) {
      arrayOfBeanPropertyWriter = _filteredProps;
    }
    int k;
    for (;;)
    {
      BeanPropertyFilter localBeanPropertyFilter = findFilter(paramSerializerProvider);
      int j = 0;
      k = 0;
      int i = 0;
      try
      {
        int m = arrayOfBeanPropertyWriter.length;
        for (;;)
        {
          if (i < m)
          {
            BeanPropertyWriter localBeanPropertyWriter = arrayOfBeanPropertyWriter[i];
            if (localBeanPropertyWriter != null)
            {
              j = i;
              k = i;
              localBeanPropertyFilter.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider, localBeanPropertyWriter);
            }
            i += 1;
            continue;
            arrayOfBeanPropertyWriter = _props;
            break;
          }
        }
        j = i;
        k = i;
        if (_anyGetterWriter != null)
        {
          j = i;
          k = i;
          _anyGetterWriter.getAndSerialize(paramObject, paramJsonGenerator, paramSerializerProvider);
        }
        return;
      }
      catch (Exception localException)
      {
        if (j == arrayOfBeanPropertyWriter.length) {}
        for (paramJsonGenerator = "[anySetter]";; paramJsonGenerator = arrayOfBeanPropertyWriter[j].getName())
        {
          wrapAndThrow(paramSerializerProvider, localException, paramObject, paramJsonGenerator);
          return;
        }
      }
      catch (StackOverflowError paramJsonGenerator)
      {
        paramSerializerProvider = new JsonMappingException("Infinite recursion (StackOverflowError)");
        if (k != arrayOfBeanPropertyWriter.length) {}
      }
    }
    for (paramJsonGenerator = "[anySetter]";; paramJsonGenerator = arrayOfBeanPropertyWriter[k].getName())
    {
      paramSerializerProvider.prependPath(new JsonMappingException.Reference(paramObject, paramJsonGenerator));
      throw paramSerializerProvider;
    }
  }
  
  public void serializeWithType(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
    throws IOException, JsonGenerationException
  {
    paramTypeSerializer.writeTypePrefixForObject(paramObject, paramJsonGenerator);
    if (_propertyFilterId != null) {
      serializeFieldsFiltered(paramObject, paramJsonGenerator, paramSerializerProvider);
    }
    for (;;)
    {
      paramTypeSerializer.writeTypeSuffixForObject(paramObject, paramJsonGenerator);
      return;
      serializeFields(paramObject, paramJsonGenerator, paramSerializerProvider);
    }
  }
  
  public String toString()
  {
    return "BeanSerializer for " + handledType().getName();
  }
}
