package org.codehaus.jackson.map.ext;

import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.deser.StdDeserializer;
import org.codehaus.jackson.map.deser.StdScalarDeserializer;
import org.codehaus.jackson.map.util.Provider;
import org.joda.time.DateMidnight;
import org.joda.time.DateTime;
import org.joda.time.DateTimeZone;
import org.joda.time.LocalDate;
import org.joda.time.LocalDateTime;
import org.joda.time.ReadableDateTime;
import org.joda.time.ReadableInstant;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;

public class JodaDeserializers
  implements Provider<StdDeserializer<?>>
{
  public JodaDeserializers() {}
  
  public Collection<StdDeserializer<?>> provide()
  {
    return Arrays.asList(new StdDeserializer[] { new DateTimeDeserializer(DateTime.class), new DateTimeDeserializer(ReadableDateTime.class), new DateTimeDeserializer(ReadableInstant.class), new LocalDateDeserializer(), new LocalDateTimeDeserializer(), new DateMidnightDeserializer() });
  }
  
  public static class DateMidnightDeserializer
    extends JodaDeserializers.JodaDeserializer<DateMidnight>
  {
    public DateMidnightDeserializer()
    {
      super();
    }
    
    public DateMidnight deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      Object localObject = null;
      if (paramJsonParser.isExpectedStartArrayToken())
      {
        paramJsonParser.nextToken();
        int i = paramJsonParser.getIntValue();
        paramJsonParser.nextToken();
        int j = paramJsonParser.getIntValue();
        paramJsonParser.nextToken();
        int k = paramJsonParser.getIntValue();
        if (paramJsonParser.nextToken() != JsonToken.END_ARRAY) {
          paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "after DateMidnight ints");
        }
        paramJsonParser = new DateMidnight(i, j, k);
      }
      do
      {
        return paramJsonParser;
        switch (JodaDeserializers.1.$SwitchMap$org$codehaus$jackson$JsonToken[paramJsonParser.getCurrentToken().ordinal()])
        {
        default: 
          paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.START_ARRAY, "expected JSON Array, Number or String");
          return null;
        case 1: 
          return new DateMidnight(paramJsonParser.getLongValue());
        }
        paramDeserializationContext = parseLocal(paramJsonParser);
        paramJsonParser = localObject;
      } while (paramDeserializationContext == null);
      return paramDeserializationContext.toDateMidnight();
    }
  }
  
  public static class DateTimeDeserializer<T extends ReadableInstant>
    extends JodaDeserializers.JodaDeserializer<T>
  {
    public DateTimeDeserializer(Class<T> paramClass)
    {
      super();
    }
    
    public T deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      JsonToken localJsonToken = paramJsonParser.getCurrentToken();
      if (localJsonToken == JsonToken.VALUE_NUMBER_INT) {
        return new DateTime(paramJsonParser.getLongValue(), DateTimeZone.UTC);
      }
      if (localJsonToken == JsonToken.VALUE_STRING)
      {
        paramJsonParser = paramJsonParser.getText().trim();
        if (paramJsonParser.length() == 0) {
          return null;
        }
        return new DateTime(paramJsonParser, DateTimeZone.UTC);
      }
      throw paramDeserializationContext.mappingException(getValueClass());
    }
  }
  
  static abstract class JodaDeserializer<T>
    extends StdScalarDeserializer<T>
  {
    static final DateTimeFormatter _localDateTimeFormat = ;
    
    protected JodaDeserializer(Class<T> paramClass)
    {
      super();
    }
    
    protected DateTime parseLocal(JsonParser paramJsonParser)
      throws IOException, JsonProcessingException
    {
      paramJsonParser = paramJsonParser.getText().trim();
      if (paramJsonParser.length() == 0) {
        return null;
      }
      return _localDateTimeFormat.parseDateTime(paramJsonParser);
    }
  }
  
  public static class LocalDateDeserializer
    extends JodaDeserializers.JodaDeserializer<LocalDate>
  {
    public LocalDateDeserializer()
    {
      super();
    }
    
    public LocalDate deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      Object localObject = null;
      if (paramJsonParser.isExpectedStartArrayToken())
      {
        paramJsonParser.nextToken();
        int i = paramJsonParser.getIntValue();
        paramJsonParser.nextToken();
        int j = paramJsonParser.getIntValue();
        paramJsonParser.nextToken();
        int k = paramJsonParser.getIntValue();
        if (paramJsonParser.nextToken() != JsonToken.END_ARRAY) {
          paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "after LocalDate ints");
        }
        paramJsonParser = new LocalDate(i, j, k);
      }
      do
      {
        return paramJsonParser;
        switch (JodaDeserializers.1.$SwitchMap$org$codehaus$jackson$JsonToken[paramJsonParser.getCurrentToken().ordinal()])
        {
        default: 
          paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.START_ARRAY, "expected JSON Array, String or Number");
          return null;
        case 1: 
          return new LocalDate(paramJsonParser.getLongValue());
        }
        paramDeserializationContext = parseLocal(paramJsonParser);
        paramJsonParser = localObject;
      } while (paramDeserializationContext == null);
      return paramDeserializationContext.toLocalDate();
    }
  }
  
  public static class LocalDateTimeDeserializer
    extends JodaDeserializers.JodaDeserializer<LocalDateTime>
  {
    public LocalDateTimeDeserializer()
    {
      super();
    }
    
    public LocalDateTime deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      Object localObject = null;
      if (paramJsonParser.isExpectedStartArrayToken())
      {
        paramJsonParser.nextToken();
        int j = paramJsonParser.getIntValue();
        paramJsonParser.nextToken();
        int k = paramJsonParser.getIntValue();
        paramJsonParser.nextToken();
        int m = paramJsonParser.getIntValue();
        paramJsonParser.nextToken();
        int n = paramJsonParser.getIntValue();
        paramJsonParser.nextToken();
        int i1 = paramJsonParser.getIntValue();
        paramJsonParser.nextToken();
        int i2 = paramJsonParser.getIntValue();
        int i = 0;
        if (paramJsonParser.nextToken() != JsonToken.END_ARRAY)
        {
          i = paramJsonParser.getIntValue();
          paramJsonParser.nextToken();
        }
        if (paramJsonParser.getCurrentToken() != JsonToken.END_ARRAY) {
          paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "after LocalDateTime ints");
        }
        paramJsonParser = new LocalDateTime(j, k, m, n, i1, i2, i);
      }
      do
      {
        return paramJsonParser;
        switch (JodaDeserializers.1.$SwitchMap$org$codehaus$jackson$JsonToken[paramJsonParser.getCurrentToken().ordinal()])
        {
        default: 
          paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.START_ARRAY, "expected JSON Array or Number");
          return null;
        case 1: 
          return new LocalDateTime(paramJsonParser.getLongValue());
        }
        paramDeserializationContext = parseLocal(paramJsonParser);
        paramJsonParser = localObject;
      } while (paramDeserializationContext == null);
      return paramDeserializationContext.toLocalDateTime();
    }
  }
}
