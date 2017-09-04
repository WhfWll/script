package org.codehaus.jackson.map.deser;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Calendar;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.Base64Variants;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.io.NumberInput;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.DeserializerProvider;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ResolvableDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.type.JavaType;
import org.codehaus.jackson.util.TokenBuffer;

public abstract class StdDeserializer<T>
  extends JsonDeserializer<T>
{
  protected final Class<?> _valueClass;
  
  protected StdDeserializer(Class<?> paramClass)
  {
    _valueClass = paramClass;
  }
  
  protected StdDeserializer(JavaType paramJavaType)
  {
    if (paramJavaType == null) {}
    for (paramJavaType = null;; paramJavaType = paramJavaType.getRawClass())
    {
      _valueClass = paramJavaType;
      return;
    }
  }
  
  protected static final double parseDouble(String paramString)
    throws NumberFormatException
  {
    if ("2.2250738585072012e-308".equals(paramString)) {
      return 2.2250738585072014E-308D;
    }
    return Double.parseDouble(paramString);
  }
  
  protected final Boolean _parseBoolean(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_TRUE) {
      return Boolean.TRUE;
    }
    if (localJsonToken == JsonToken.VALUE_FALSE) {
      return Boolean.FALSE;
    }
    if (localJsonToken == JsonToken.VALUE_NULL) {
      return null;
    }
    if (localJsonToken == JsonToken.VALUE_NUMBER_INT)
    {
      if (paramJsonParser.getIntValue() == 0) {
        return Boolean.FALSE;
      }
      return Boolean.TRUE;
    }
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      paramJsonParser = paramJsonParser.getText().trim();
      if ("true".equals(paramJsonParser)) {
        return Boolean.TRUE;
      }
      if (("false".equals(paramJsonParser)) || (paramJsonParser.length() == 0)) {
        return Boolean.FALSE;
      }
      throw paramDeserializationContext.weirdStringException(_valueClass, "only \"true\" or \"false\" recognized");
    }
    throw paramDeserializationContext.mappingException(_valueClass);
  }
  
  protected final boolean _parseBooleanPrimitive(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_TRUE) {}
    do
    {
      do
      {
        return true;
        if (localJsonToken == JsonToken.VALUE_FALSE) {
          return false;
        }
        if (localJsonToken == JsonToken.VALUE_NULL) {
          return false;
        }
        if (localJsonToken != JsonToken.VALUE_NUMBER_INT) {
          break;
        }
      } while (paramJsonParser.getIntValue() != 0);
      return false;
      if (localJsonToken != JsonToken.VALUE_STRING) {
        break;
      }
      paramJsonParser = paramJsonParser.getText().trim();
    } while ("true".equals(paramJsonParser));
    if (("false".equals(paramJsonParser)) || (paramJsonParser.length() == 0)) {
      return Boolean.FALSE.booleanValue();
    }
    throw paramDeserializationContext.weirdStringException(_valueClass, "only \"true\" or \"false\" recognized");
    throw paramDeserializationContext.mappingException(_valueClass);
  }
  
  protected java.util.Date _parseDate(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    try
    {
      if (localJsonToken == JsonToken.VALUE_NUMBER_INT) {
        return new java.util.Date(paramJsonParser.getLongValue());
      }
      if (localJsonToken == JsonToken.VALUE_STRING)
      {
        paramJsonParser = paramJsonParser.getText().trim();
        if (paramJsonParser.length() == 0) {
          return null;
        }
        return paramDeserializationContext.parseDate(paramJsonParser);
      }
      throw paramDeserializationContext.mappingException(_valueClass);
    }
    catch (IllegalArgumentException paramJsonParser)
    {
      throw paramDeserializationContext.weirdStringException(_valueClass, "not a valid representation (error: " + paramJsonParser.getMessage() + ")");
    }
  }
  
  protected final Double _parseDouble(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    Object localObject1 = null;
    Object localObject2 = paramJsonParser.getCurrentToken();
    if ((localObject2 == JsonToken.VALUE_NUMBER_INT) || (localObject2 == JsonToken.VALUE_NUMBER_FLOAT)) {
      paramJsonParser = Double.valueOf(paramJsonParser.getDoubleValue());
    }
    do
    {
      do
      {
        return paramJsonParser;
        if (localObject2 != JsonToken.VALUE_STRING) {
          break;
        }
        localObject2 = paramJsonParser.getText().trim();
        paramJsonParser = localObject1;
      } while (((String)localObject2).length() == 0);
      switch (((String)localObject2).charAt(0))
      {
      }
      for (;;)
      {
        try
        {
          double d = parseDouble((String)localObject2);
          return Double.valueOf(d);
        }
        catch (IllegalArgumentException paramJsonParser)
        {
          throw paramDeserializationContext.weirdStringException(_valueClass, "not a valid Double value");
        }
        if (("Infinity".equals(localObject2)) || ("INF".equals(localObject2)))
        {
          return Double.valueOf(Double.POSITIVE_INFINITY);
          if ("NaN".equals(localObject2))
          {
            return Double.valueOf(NaN.0D);
            if (("-Infinity".equals(localObject2)) || ("-INF".equals(localObject2))) {
              return Double.valueOf(Double.NEGATIVE_INFINITY);
            }
          }
        }
      }
      paramJsonParser = localObject1;
    } while (localObject2 == JsonToken.VALUE_NULL);
    throw paramDeserializationContext.mappingException(_valueClass);
  }
  
  protected final double _parseDoublePrimitive(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    double d = 0.0D;
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT)) {
      d = paramJsonParser.getDoubleValue();
    }
    do
    {
      do
      {
        return d;
        if (localJsonToken != JsonToken.VALUE_STRING) {
          break;
        }
        paramJsonParser = paramJsonParser.getText().trim();
      } while (paramJsonParser.length() == 0);
      switch (paramJsonParser.charAt(0))
      {
      }
      for (;;)
      {
        try
        {
          d = parseDouble(paramJsonParser);
          return d;
        }
        catch (IllegalArgumentException paramJsonParser)
        {
          throw paramDeserializationContext.weirdStringException(_valueClass, "not a valid double value");
        }
        if (("Infinity".equals(paramJsonParser)) || ("INF".equals(paramJsonParser)))
        {
          return Double.POSITIVE_INFINITY;
          if ("NaN".equals(paramJsonParser))
          {
            return NaN.0D;
            if (("-Infinity".equals(paramJsonParser)) || ("-INF".equals(paramJsonParser))) {
              return Double.NEGATIVE_INFINITY;
            }
          }
        }
      }
    } while (localJsonToken == JsonToken.VALUE_NULL);
    throw paramDeserializationContext.mappingException(_valueClass);
  }
  
  protected final Float _parseFloat(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    Object localObject1 = null;
    Object localObject2 = paramJsonParser.getCurrentToken();
    if ((localObject2 == JsonToken.VALUE_NUMBER_INT) || (localObject2 == JsonToken.VALUE_NUMBER_FLOAT)) {
      paramJsonParser = Float.valueOf(paramJsonParser.getFloatValue());
    }
    do
    {
      do
      {
        return paramJsonParser;
        if (localObject2 != JsonToken.VALUE_STRING) {
          break;
        }
        localObject2 = paramJsonParser.getText().trim();
        paramJsonParser = localObject1;
      } while (((String)localObject2).length() == 0);
      switch (((String)localObject2).charAt(0))
      {
      }
      for (;;)
      {
        try
        {
          float f = Float.parseFloat((String)localObject2);
          return Float.valueOf(f);
        }
        catch (IllegalArgumentException paramJsonParser)
        {
          throw paramDeserializationContext.weirdStringException(_valueClass, "not a valid Float value");
        }
        if (("Infinity".equals(localObject2)) || ("INF".equals(localObject2)))
        {
          return Float.valueOf(Float.POSITIVE_INFINITY);
          if ("NaN".equals(localObject2))
          {
            return Float.valueOf(NaN.0F);
            if (("-Infinity".equals(localObject2)) || ("-INF".equals(localObject2))) {
              return Float.valueOf(Float.NEGATIVE_INFINITY);
            }
          }
        }
      }
      paramJsonParser = localObject1;
    } while (localObject2 == JsonToken.VALUE_NULL);
    throw paramDeserializationContext.mappingException(_valueClass);
  }
  
  protected final float _parseFloatPrimitive(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    float f = 0.0F;
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT)) {
      f = paramJsonParser.getFloatValue();
    }
    do
    {
      do
      {
        return f;
        if (localJsonToken != JsonToken.VALUE_STRING) {
          break;
        }
        paramJsonParser = paramJsonParser.getText().trim();
      } while (paramJsonParser.length() == 0);
      switch (paramJsonParser.charAt(0))
      {
      }
      for (;;)
      {
        try
        {
          f = Float.parseFloat(paramJsonParser);
          return f;
        }
        catch (IllegalArgumentException paramJsonParser)
        {
          throw paramDeserializationContext.weirdStringException(_valueClass, "not a valid float value");
        }
        if (("Infinity".equals(paramJsonParser)) || ("INF".equals(paramJsonParser)))
        {
          return Float.POSITIVE_INFINITY;
          if ("NaN".equals(paramJsonParser))
          {
            return NaN.0F;
            if (("-Infinity".equals(paramJsonParser)) || ("-INF".equals(paramJsonParser))) {
              return Float.NEGATIVE_INFINITY;
            }
          }
        }
      }
    } while (localJsonToken == JsonToken.VALUE_NULL);
    throw paramDeserializationContext.mappingException(_valueClass);
  }
  
  protected final int _parseIntPrimitive(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    int i = 0;
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT)) {
      i = paramJsonParser.getIntValue();
    }
    do
    {
      int j;
      do
      {
        return i;
        if (localJsonToken != JsonToken.VALUE_STRING) {
          break;
        }
        paramJsonParser = paramJsonParser.getText().trim();
        long l;
        try
        {
          j = paramJsonParser.length();
          if (j <= 9) {
            continue;
          }
          l = Long.parseLong(paramJsonParser);
          if ((l < -2147483648L) || (l > 2147483647L)) {
            throw paramDeserializationContext.weirdStringException(_valueClass, "Overflow: numeric value (" + paramJsonParser + ") out of range of int (" + Integer.MIN_VALUE + " - " + Integer.MAX_VALUE + ")");
          }
        }
        catch (IllegalArgumentException paramJsonParser)
        {
          throw paramDeserializationContext.weirdStringException(_valueClass, "not a valid int value");
        }
        return (int)l;
      } while (j == 0);
      i = NumberInput.parseInt(paramJsonParser);
      return i;
    } while (localJsonToken == JsonToken.VALUE_NULL);
    throw paramDeserializationContext.mappingException(_valueClass);
  }
  
  protected final Integer _parseInteger(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    Object localObject1 = null;
    Object localObject2 = paramJsonParser.getCurrentToken();
    if ((localObject2 == JsonToken.VALUE_NUMBER_INT) || (localObject2 == JsonToken.VALUE_NUMBER_FLOAT)) {
      paramJsonParser = Integer.valueOf(paramJsonParser.getIntValue());
    }
    label170:
    do
    {
      do
      {
        return paramJsonParser;
        if (localObject2 != JsonToken.VALUE_STRING) {
          break;
        }
        localObject2 = paramJsonParser.getText().trim();
        long l;
        try
        {
          i = ((String)localObject2).length();
          if (i <= 9) {
            break label170;
          }
          l = Long.parseLong((String)localObject2);
          if ((l < -2147483648L) || (l > 2147483647L)) {
            throw paramDeserializationContext.weirdStringException(_valueClass, "Overflow: numeric value (" + (String)localObject2 + ") out of range of Integer (" + Integer.MIN_VALUE + " - " + Integer.MAX_VALUE + ")");
          }
        }
        catch (IllegalArgumentException paramJsonParser)
        {
          throw paramDeserializationContext.weirdStringException(_valueClass, "not a valid Integer value");
        }
        i = (int)l;
        return Integer.valueOf(i);
        paramJsonParser = localObject1;
      } while (i == 0);
      int i = NumberInput.parseInt((String)localObject2);
      return Integer.valueOf(i);
      paramJsonParser = localObject1;
    } while (localObject2 == JsonToken.VALUE_NULL);
    throw paramDeserializationContext.mappingException(_valueClass);
  }
  
  protected final Long _parseLong(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    Object localObject1 = null;
    Object localObject2 = paramJsonParser.getCurrentToken();
    if ((localObject2 == JsonToken.VALUE_NUMBER_INT) || (localObject2 == JsonToken.VALUE_NUMBER_FLOAT)) {
      paramJsonParser = Long.valueOf(paramJsonParser.getLongValue());
    }
    do
    {
      do
      {
        return paramJsonParser;
        if (localObject2 != JsonToken.VALUE_STRING) {
          break;
        }
        localObject2 = paramJsonParser.getText().trim();
        paramJsonParser = localObject1;
      } while (((String)localObject2).length() == 0);
      try
      {
        long l = NumberInput.parseLong((String)localObject2);
        return Long.valueOf(l);
      }
      catch (IllegalArgumentException paramJsonParser)
      {
        throw paramDeserializationContext.weirdStringException(_valueClass, "not a valid Long value");
      }
      paramJsonParser = localObject1;
    } while (localObject2 == JsonToken.VALUE_NULL);
    throw paramDeserializationContext.mappingException(_valueClass);
  }
  
  protected final long _parseLongPrimitive(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    long l = 0L;
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT)) {
      l = paramJsonParser.getLongValue();
    }
    do
    {
      do
      {
        return l;
        if (localJsonToken != JsonToken.VALUE_STRING) {
          break;
        }
        paramJsonParser = paramJsonParser.getText().trim();
      } while (paramJsonParser.length() == 0);
      try
      {
        l = NumberInput.parseLong(paramJsonParser);
        return l;
      }
      catch (IllegalArgumentException paramJsonParser)
      {
        throw paramDeserializationContext.weirdStringException(_valueClass, "not a valid long value");
      }
    } while (localJsonToken == JsonToken.VALUE_NULL);
    throw paramDeserializationContext.mappingException(_valueClass);
  }
  
  protected final Short _parseShort(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_NULL) {
      return null;
    }
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT)) {
      return Short.valueOf(paramJsonParser.getShortValue());
    }
    int i = _parseIntPrimitive(paramJsonParser, paramDeserializationContext);
    if ((i < 32768) || (i > 32767)) {
      throw paramDeserializationContext.weirdStringException(_valueClass, "overflow, value can not be represented as 16-bit value");
    }
    return Short.valueOf((short)i);
  }
  
  protected final short _parseShortPrimitive(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    int i = _parseIntPrimitive(paramJsonParser, paramDeserializationContext);
    if ((i < 32768) || (i > 32767)) {
      throw paramDeserializationContext.weirdStringException(_valueClass, "overflow, value can not be represented as 16-bit value");
    }
    return (short)i;
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
    throws IOException, JsonProcessingException
  {
    return paramTypeDeserializer.deserializeTypedFromAny(paramJsonParser, paramDeserializationContext);
  }
  
  protected JsonDeserializer<Object> findDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, JavaType paramJavaType, BeanProperty paramBeanProperty)
    throws JsonMappingException
  {
    return paramDeserializerProvider.findValueDeserializer(paramDeserializationConfig, paramJavaType, paramBeanProperty);
  }
  
  public Class<?> getValueClass()
  {
    return _valueClass;
  }
  
  public JavaType getValueType()
  {
    return null;
  }
  
  protected void handleUnknownProperty(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject, String paramString)
    throws IOException, JsonProcessingException
  {
    Object localObject = paramObject;
    if (paramObject == null) {
      localObject = getValueClass();
    }
    if (paramDeserializationContext.handleUnknownProperty(paramJsonParser, this, localObject, paramString)) {
      return;
    }
    reportUnknownProperty(paramDeserializationContext, localObject, paramString);
    paramJsonParser.skipChildren();
  }
  
  protected boolean isDefaultSerializer(JsonDeserializer<?> paramJsonDeserializer)
  {
    return (paramJsonDeserializer != null) && (paramJsonDeserializer.getClass().getAnnotation(JacksonStdImpl.class) != null);
  }
  
  protected void reportUnknownProperty(DeserializationContext paramDeserializationContext, Object paramObject, String paramString)
    throws IOException, JsonProcessingException
  {
    if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.FAIL_ON_UNKNOWN_PROPERTIES)) {
      throw paramDeserializationContext.unknownFieldException(paramObject, paramString);
    }
  }
  
  public static final class AtomicBooleanDeserializer
    extends StdScalarDeserializer<AtomicBoolean>
  {
    public AtomicBooleanDeserializer()
    {
      super();
    }
    
    public AtomicBoolean deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      return new AtomicBoolean(_parseBooleanPrimitive(paramJsonParser, paramDeserializationContext));
    }
  }
  
  public static class AtomicReferenceDeserializer
    extends StdScalarDeserializer<AtomicReference<?>>
    implements ResolvableDeserializer
  {
    protected final BeanProperty _property;
    protected final JavaType _referencedType;
    protected JsonDeserializer<?> _valueDeserializer;
    
    public AtomicReferenceDeserializer(JavaType paramJavaType, BeanProperty paramBeanProperty)
    {
      super();
      _referencedType = paramJavaType;
      _property = paramBeanProperty;
    }
    
    public AtomicReference<?> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      return new AtomicReference(_valueDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
    }
    
    public void resolve(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider)
      throws JsonMappingException
    {
      _valueDeserializer = paramDeserializerProvider.findValueDeserializer(paramDeserializationConfig, _referencedType, _property);
    }
  }
  
  @JacksonStdImpl
  public static class BigDecimalDeserializer
    extends StdScalarDeserializer<BigDecimal>
  {
    public BigDecimalDeserializer()
    {
      super();
    }
    
    public BigDecimal deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      JsonToken localJsonToken = paramJsonParser.getCurrentToken();
      if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT)) {
        return paramJsonParser.getDecimalValue();
      }
      if (localJsonToken == JsonToken.VALUE_STRING)
      {
        paramJsonParser = paramJsonParser.getText().trim();
        if (paramJsonParser.length() == 0) {
          return null;
        }
        try
        {
          paramJsonParser = new BigDecimal(paramJsonParser);
          return paramJsonParser;
        }
        catch (IllegalArgumentException paramJsonParser)
        {
          throw paramDeserializationContext.weirdStringException(_valueClass, "not a valid representation");
        }
      }
      throw paramDeserializationContext.mappingException(_valueClass);
    }
  }
  
  @JacksonStdImpl
  public static class BigIntegerDeserializer
    extends StdScalarDeserializer<BigInteger>
  {
    public BigIntegerDeserializer()
    {
      super();
    }
    
    public BigInteger deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      JsonToken localJsonToken = paramJsonParser.getCurrentToken();
      if (localJsonToken == JsonToken.VALUE_NUMBER_INT) {
        switch (StdDeserializer.1.$SwitchMap$org$codehaus$jackson$JsonParser$NumberType[paramJsonParser.getNumberType().ordinal()])
        {
        }
      }
      do
      {
        paramJsonParser = paramJsonParser.getText().trim();
        if (paramJsonParser.length() != 0) {
          break;
        }
        return null;
        return BigInteger.valueOf(paramJsonParser.getLongValue());
        if (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT) {
          return paramJsonParser.getDecimalValue().toBigInteger();
        }
      } while (localJsonToken == JsonToken.VALUE_STRING);
      throw paramDeserializationContext.mappingException(_valueClass);
      try
      {
        paramJsonParser = new BigInteger(paramJsonParser);
        return paramJsonParser;
      }
      catch (IllegalArgumentException paramJsonParser)
      {
        throw paramDeserializationContext.weirdStringException(_valueClass, "not a valid representation");
      }
    }
  }
  
  @JacksonStdImpl
  public static final class BooleanDeserializer
    extends StdDeserializer.PrimitiveOrWrapperDeserializer<Boolean>
  {
    public BooleanDeserializer(Class<Boolean> paramClass, Boolean paramBoolean)
    {
      super(paramBoolean);
    }
    
    public Boolean deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      return _parseBoolean(paramJsonParser, paramDeserializationContext);
    }
    
    public Boolean deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
      throws IOException, JsonProcessingException
    {
      return _parseBoolean(paramJsonParser, paramDeserializationContext);
    }
  }
  
  @JacksonStdImpl
  public static final class ByteDeserializer
    extends StdDeserializer.PrimitiveOrWrapperDeserializer<Byte>
  {
    public ByteDeserializer(Class<Byte> paramClass, Byte paramByte)
    {
      super(paramByte);
    }
    
    public Byte deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      int i = _parseIntPrimitive(paramJsonParser, paramDeserializationContext);
      if ((i < -128) || (i > 127)) {
        throw paramDeserializationContext.weirdStringException(_valueClass, "overflow, value can not be represented as 8-bit value");
      }
      return Byte.valueOf((byte)i);
    }
  }
  
  @JacksonStdImpl
  public static class CalendarDeserializer
    extends StdScalarDeserializer<Calendar>
  {
    Class<? extends Calendar> _calendarClass;
    
    public CalendarDeserializer()
    {
      this(null);
    }
    
    public CalendarDeserializer(Class<? extends Calendar> paramClass)
    {
      super();
      _calendarClass = paramClass;
    }
    
    public Calendar deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      paramJsonParser = _parseDate(paramJsonParser, paramDeserializationContext);
      if (paramJsonParser == null) {
        return null;
      }
      if (_calendarClass == null) {
        return paramDeserializationContext.constructCalendar(paramJsonParser);
      }
      try
      {
        Calendar localCalendar = (Calendar)_calendarClass.newInstance();
        localCalendar.setTimeInMillis(paramJsonParser.getTime());
        return localCalendar;
      }
      catch (Exception paramJsonParser)
      {
        throw paramDeserializationContext.instantiationException(_calendarClass, paramJsonParser);
      }
    }
  }
  
  @JacksonStdImpl
  public static final class CharacterDeserializer
    extends StdDeserializer.PrimitiveOrWrapperDeserializer<Character>
  {
    public CharacterDeserializer(Class<Character> paramClass, Character paramCharacter)
    {
      super(paramCharacter);
    }
    
    public Character deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      JsonToken localJsonToken = paramJsonParser.getCurrentToken();
      if (localJsonToken == JsonToken.VALUE_NUMBER_INT)
      {
        int i = paramJsonParser.getIntValue();
        if ((i >= 0) && (i <= 65535)) {
          return Character.valueOf((char)i);
        }
      }
      else if (localJsonToken == JsonToken.VALUE_STRING)
      {
        paramJsonParser = paramJsonParser.getText();
        if (paramJsonParser.length() == 1) {
          return Character.valueOf(paramJsonParser.charAt(0));
        }
      }
      throw paramDeserializationContext.mappingException(_valueClass);
    }
  }
  
  @JacksonStdImpl
  public static final class ClassDeserializer
    extends StdScalarDeserializer<Class<?>>
  {
    public ClassDeserializer()
    {
      super();
    }
    
    public Class<?> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
        try
        {
          paramJsonParser = Class.forName(paramJsonParser.getText());
          return paramJsonParser;
        }
        catch (ClassNotFoundException paramJsonParser)
        {
          throw paramDeserializationContext.instantiationException(_valueClass, paramJsonParser);
        }
      }
      throw paramDeserializationContext.mappingException(_valueClass);
    }
  }
  
  @JacksonStdImpl
  public static final class DoubleDeserializer
    extends StdDeserializer.PrimitiveOrWrapperDeserializer<Double>
  {
    public DoubleDeserializer(Class<Double> paramClass, Double paramDouble)
    {
      super(paramDouble);
    }
    
    public Double deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      return _parseDouble(paramJsonParser, paramDeserializationContext);
    }
    
    public Double deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
      throws IOException, JsonProcessingException
    {
      return _parseDouble(paramJsonParser, paramDeserializationContext);
    }
  }
  
  @JacksonStdImpl
  public static final class FloatDeserializer
    extends StdDeserializer.PrimitiveOrWrapperDeserializer<Float>
  {
    public FloatDeserializer(Class<Float> paramClass, Float paramFloat)
    {
      super(paramFloat);
    }
    
    public Float deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      return _parseFloat(paramJsonParser, paramDeserializationContext);
    }
  }
  
  @JacksonStdImpl
  public static final class IntegerDeserializer
    extends StdDeserializer.PrimitiveOrWrapperDeserializer<Integer>
  {
    public IntegerDeserializer(Class<Integer> paramClass, Integer paramInteger)
    {
      super(paramInteger);
    }
    
    public Integer deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      return _parseInteger(paramJsonParser, paramDeserializationContext);
    }
    
    public Integer deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
      throws IOException, JsonProcessingException
    {
      return _parseInteger(paramJsonParser, paramDeserializationContext);
    }
  }
  
  @JacksonStdImpl
  public static final class LongDeserializer
    extends StdDeserializer.PrimitiveOrWrapperDeserializer<Long>
  {
    public LongDeserializer(Class<Long> paramClass, Long paramLong)
    {
      super(paramLong);
    }
    
    public Long deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      return _parseLong(paramJsonParser, paramDeserializationContext);
    }
  }
  
  @JacksonStdImpl
  public static final class NumberDeserializer
    extends StdScalarDeserializer<Number>
  {
    public NumberDeserializer()
    {
      super();
    }
    
    public Number deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      JsonToken localJsonToken = paramJsonParser.getCurrentToken();
      if (localJsonToken == JsonToken.VALUE_NUMBER_INT)
      {
        if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_INTEGER_FOR_INTS)) {
          return paramJsonParser.getBigIntegerValue();
        }
        return paramJsonParser.getNumberValue();
      }
      if (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT)
      {
        if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_DECIMAL_FOR_FLOATS)) {
          return paramJsonParser.getDecimalValue();
        }
        return Double.valueOf(paramJsonParser.getDoubleValue());
      }
      if (localJsonToken == JsonToken.VALUE_STRING)
      {
        paramJsonParser = paramJsonParser.getText().trim();
        try
        {
          if (paramJsonParser.indexOf('.') < 0) {
            break label132;
          }
          if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_DECIMAL_FOR_FLOATS))
          {
            paramJsonParser = new BigDecimal(paramJsonParser);
            return paramJsonParser;
          }
        }
        catch (IllegalArgumentException paramJsonParser)
        {
          throw paramDeserializationContext.weirdStringException(_valueClass, "not a valid number");
        }
        return new Double(paramJsonParser);
        label132:
        if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_INTEGER_FOR_INTS)) {
          return new BigInteger(paramJsonParser);
        }
        long l = Long.parseLong(paramJsonParser);
        if ((l <= 2147483647L) && (l >= -2147483648L)) {
          return Integer.valueOf((int)l);
        }
        return Long.valueOf(l);
      }
      throw paramDeserializationContext.mappingException(_valueClass);
    }
    
    public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
      throws IOException, JsonProcessingException
    {
      switch (StdDeserializer.1.$SwitchMap$org$codehaus$jackson$JsonToken[paramJsonParser.getCurrentToken().ordinal()])
      {
      default: 
        return paramTypeDeserializer.deserializeTypedFromScalar(paramJsonParser, paramDeserializationContext);
      }
      return deserialize(paramJsonParser, paramDeserializationContext);
    }
  }
  
  protected static abstract class PrimitiveOrWrapperDeserializer<T>
    extends StdScalarDeserializer<T>
  {
    final T _nullValue;
    
    protected PrimitiveOrWrapperDeserializer(Class<T> paramClass, T paramT)
    {
      super();
      _nullValue = paramT;
    }
    
    public final T getNullValue()
    {
      return _nullValue;
    }
  }
  
  @JacksonStdImpl
  public static final class ShortDeserializer
    extends StdDeserializer.PrimitiveOrWrapperDeserializer<Short>
  {
    public ShortDeserializer(Class<Short> paramClass, Short paramShort)
    {
      super(paramShort);
    }
    
    public Short deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      return _parseShort(paramJsonParser, paramDeserializationContext);
    }
  }
  
  public static class SqlDateDeserializer
    extends StdScalarDeserializer<java.sql.Date>
  {
    public SqlDateDeserializer()
    {
      super();
    }
    
    public java.sql.Date deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      paramJsonParser = _parseDate(paramJsonParser, paramDeserializationContext);
      if (paramJsonParser == null) {
        return null;
      }
      return new java.sql.Date(paramJsonParser.getTime());
    }
  }
  
  public static class StackTraceElementDeserializer
    extends StdScalarDeserializer<StackTraceElement>
  {
    public StackTraceElementDeserializer()
    {
      super();
    }
    
    public StackTraceElement deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      if (paramJsonParser.getCurrentToken() == JsonToken.START_OBJECT)
      {
        String str3 = "";
        String str1 = "";
        String str2 = "";
        int i = -1;
        for (;;)
        {
          JsonToken localJsonToken = paramJsonParser.nextValue();
          if (localJsonToken == JsonToken.END_OBJECT) {
            break;
          }
          String str4 = paramJsonParser.getCurrentName();
          if ("className".equals(str4)) {
            str3 = paramJsonParser.getText();
          } else if ("fileName".equals(str4)) {
            str2 = paramJsonParser.getText();
          } else if ("lineNumber".equals(str4))
          {
            if (localJsonToken.isNumeric()) {
              i = paramJsonParser.getIntValue();
            } else {
              throw JsonMappingException.from(paramJsonParser, "Non-numeric token (" + localJsonToken + ") for property 'lineNumber'");
            }
          }
          else if ("methodName".equals(str4)) {
            str1 = paramJsonParser.getText();
          } else if (!"nativeMethod".equals(str4)) {
            handleUnknownProperty(paramJsonParser, paramDeserializationContext, _valueClass, str4);
          }
        }
        return new StackTraceElement(str3, str1, str2, i);
      }
      throw paramDeserializationContext.mappingException(_valueClass);
    }
  }
  
  @JacksonStdImpl
  public static final class StringDeserializer
    extends StdScalarDeserializer<String>
  {
    public StringDeserializer()
    {
      super();
    }
    
    public String deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      JsonToken localJsonToken = paramJsonParser.getCurrentToken();
      if (localJsonToken == JsonToken.VALUE_STRING) {
        return paramJsonParser.getText();
      }
      if (localJsonToken == JsonToken.VALUE_EMBEDDED_OBJECT)
      {
        paramJsonParser = paramJsonParser.getEmbeddedObject();
        if (paramJsonParser == null) {
          return null;
        }
        if ((paramJsonParser instanceof byte[])) {
          return Base64Variants.getDefaultVariant().encode((byte[])paramJsonParser, false);
        }
        return paramJsonParser.toString();
      }
      if (localJsonToken.isScalarValue()) {
        return paramJsonParser.getText();
      }
      throw paramDeserializationContext.mappingException(_valueClass);
    }
    
    public String deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
      throws IOException, JsonProcessingException
    {
      return deserialize(paramJsonParser, paramDeserializationContext);
    }
  }
  
  @JacksonStdImpl
  public static class TokenBufferDeserializer
    extends StdScalarDeserializer<TokenBuffer>
  {
    public TokenBufferDeserializer()
    {
      super();
    }
    
    public TokenBuffer deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      paramDeserializationContext = new TokenBuffer(paramJsonParser.getCodec());
      paramDeserializationContext.copyCurrentStructure(paramJsonParser);
      return paramDeserializationContext;
    }
  }
}
