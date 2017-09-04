package org.codehaus.jackson.map.deser;

import java.io.IOException;
import java.util.HashSet;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.deser.impl.BeanPropertyMap;
import org.codehaus.jackson.type.JavaType;

public class ThrowableDeserializer
  extends BeanDeserializer
{
  protected static final String PROP_NAME_MESSAGE = "message";
  
  public ThrowableDeserializer(BeanDeserializer paramBeanDeserializer)
  {
    super(paramBeanDeserializer);
  }
  
  public Object deserializeFromObject(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (_propertyBasedCreator != null) {
      paramJsonParser = _deserializeUsingPropertyBased(paramJsonParser, paramDeserializationContext);
    }
    Object localObject1;
    int i;
    do
    {
      Object localObject2;
      do
      {
        return paramJsonParser;
        if (_delegatingCreator != null) {
          return _delegatingCreator.deserialize(paramJsonParser, paramDeserializationContext);
        }
        if (_beanType.isAbstract()) {
          throw JsonMappingException.from(paramJsonParser, "Can not instantiate abstract type " + _beanType + " (need to add/enable type information?)");
        }
        if (_stringCreator == null) {
          throw new JsonMappingException("Can not deserialize Throwable of type " + _beanType + " without having either single-String-arg constructor; or explicit @JsonCreator");
        }
        localObject2 = null;
        localObject1 = null;
        i = 0;
        if (paramJsonParser.getCurrentToken() != JsonToken.END_OBJECT)
        {
          Object localObject3 = paramJsonParser.getCurrentName();
          Object localObject4 = _beanProperties.find((String)localObject3);
          paramJsonParser.nextToken();
          if (localObject4 != null) {
            if (localObject2 != null)
            {
              ((SettableBeanProperty)localObject4).deserializeAndSet(paramJsonParser, paramDeserializationContext, localObject2);
              j = i;
              localObject3 = localObject1;
            }
          }
          for (;;)
          {
            paramJsonParser.nextToken();
            localObject1 = localObject3;
            i = j;
            break;
            localObject3 = localObject1;
            if (localObject1 == null)
            {
              j = _beanProperties.size();
              localObject3 = new Object[j + j];
            }
            int k = i + 1;
            localObject3[i] = localObject4;
            j = k + 1;
            localObject3[k] = ((SettableBeanProperty)localObject4).deserialize(paramJsonParser, paramDeserializationContext);
            continue;
            if ("message".equals(localObject3))
            {
              localObject4 = _stringCreator.construct(paramJsonParser.getText());
              localObject3 = localObject1;
              j = i;
              localObject2 = localObject4;
              if (localObject1 != null)
              {
                j = 0;
                while (j < i)
                {
                  ((SettableBeanProperty)localObject1[j]).set(localObject4, localObject1[(j + 1)]);
                  j += 2;
                }
                localObject3 = null;
                j = i;
                localObject2 = localObject4;
              }
            }
            else if ((_ignorableProps != null) && (_ignorableProps.contains(localObject3)))
            {
              paramJsonParser.skipChildren();
              localObject3 = localObject1;
              j = i;
            }
            else if (_anySetter != null)
            {
              _anySetter.deserializeAndSet(paramJsonParser, paramDeserializationContext, localObject2, (String)localObject3);
              localObject3 = localObject1;
              j = i;
            }
            else
            {
              handleUnknownProperty(paramJsonParser, paramDeserializationContext, localObject2, (String)localObject3);
              localObject3 = localObject1;
              j = i;
            }
          }
        }
        paramJsonParser = localObject2;
      } while (localObject2 != null);
      paramDeserializationContext = _stringCreator.construct(null);
      paramJsonParser = paramDeserializationContext;
    } while (localObject1 == null);
    int j = 0;
    for (;;)
    {
      paramJsonParser = paramDeserializationContext;
      if (j >= i) {
        break;
      }
      ((SettableBeanProperty)localObject1[j]).set(paramDeserializationContext, localObject1[(j + 1)]);
      j += 2;
    }
  }
}
