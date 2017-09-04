package org.apache.cordova;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.text.format.Time;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Currency;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Globalization
  extends CordovaPlugin
{
  public static final String CURRENCY = "currency";
  public static final String CURRENCYCODE = "currencyCode";
  public static final String DATE = "date";
  public static final String DATESTRING = "dateString";
  public static final String DATETOSTRING = "dateToString";
  public static final String DAYS = "days";
  public static final String FORMATLENGTH = "formatLength";
  public static final String FULL = "full";
  public static final String GETCURRENCYPATTERN = "getCurrencyPattern";
  public static final String GETDATENAMES = "getDateNames";
  public static final String GETDATEPATTERN = "getDatePattern";
  public static final String GETFIRSTDAYOFWEEK = "getFirstDayOfWeek";
  public static final String GETLOCALENAME = "getLocaleName";
  public static final String GETNUMBERPATTERN = "getNumberPattern";
  public static final String GETPREFERREDLANGUAGE = "getPreferredLanguage";
  public static final String ISDAYLIGHTSAVINGSTIME = "isDayLightSavingsTime";
  public static final String ITEM = "item";
  public static final String LONG = "long";
  public static final String MEDIUM = "medium";
  public static final String MONTHS = "months";
  public static final String NARROW = "narrow";
  public static final String NUMBER = "number";
  public static final String NUMBERSTRING = "numberString";
  public static final String NUMBERTOSTRING = "numberToString";
  public static final String OPTIONS = "options";
  public static final String PERCENT = "percent";
  public static final String SELECTOR = "selector";
  public static final String STRINGTODATE = "stringToDate";
  public static final String STRINGTONUMBER = "stringToNumber";
  public static final String TIME = "time";
  public static final String TYPE = "type";
  public static final String WIDE = "wide";
  
  public Globalization() {}
  
  private JSONObject getCurrencyPattern(JSONArray paramJSONArray)
    throws GlobalizationError
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      Object localObject = paramJSONArray.getJSONObject(0).getString("currencyCode");
      paramJSONArray = (DecimalFormat)DecimalFormat.getCurrencyInstance(Locale.getDefault());
      localObject = Currency.getInstance((String)localObject);
      paramJSONArray.setCurrency((Currency)localObject);
      localJSONObject.put("pattern", paramJSONArray.toPattern());
      localJSONObject.put("code", ((Currency)localObject).getCurrencyCode());
      localJSONObject.put("fraction", paramJSONArray.getMinimumFractionDigits());
      localJSONObject.put("rounding", new Integer(0));
      localJSONObject.put("decimal", String.valueOf(paramJSONArray.getDecimalFormatSymbols().getDecimalSeparator()));
      localJSONObject.put("grouping", String.valueOf(paramJSONArray.getDecimalFormatSymbols().getGroupingSeparator()));
      return localJSONObject;
    }
    catch (Exception paramJSONArray)
    {
      throw new GlobalizationError("FORMATTING_ERROR");
    }
  }
  
  @TargetApi(9)
  private JSONObject getDateNames(final JSONArray paramJSONArray)
    throws GlobalizationError
  {
    JSONObject localJSONObject = new JSONObject();
    JSONArray localJSONArray = new JSONArray();
    ArrayList localArrayList = new ArrayList();
    int k = 0;
    int n = 0;
    int m = 0;
    int j = m;
    for (;;)
    {
      try
      {
        if (paramJSONArray.getJSONObject(0).length() > 0)
        {
          i = n;
          if (!((JSONObject)paramJSONArray.getJSONObject(0).get("options")).isNull("type"))
          {
            i = n;
            if (((String)((JSONObject)paramJSONArray.getJSONObject(0).get("options")).get("type")).equalsIgnoreCase("narrow")) {
              i = 0 + 1;
            }
          }
          j = m;
          k = i;
          if (!((JSONObject)paramJSONArray.getJSONObject(0).get("options")).isNull("item"))
          {
            j = m;
            k = i;
            if (((String)((JSONObject)paramJSONArray.getJSONObject(0).get("options")).get("item")).equalsIgnoreCase("days"))
            {
              j = 0 + 10;
              k = i;
            }
          }
        }
        i = j + k;
        if (i == 1)
        {
          paramJSONArray = Calendar.getInstance().getDisplayNames(2, 1, Locale.getDefault());
          Iterator localIterator = paramJSONArray.keySet().iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          localArrayList.add((String)localIterator.next());
          continue;
        }
        if (i != 10) {
          break label280;
        }
      }
      catch (Exception paramJSONArray)
      {
        throw new GlobalizationError("UNKNOWN_ERROR");
      }
      paramJSONArray = Calendar.getInstance().getDisplayNames(7, 2, Locale.getDefault());
      continue;
      label280:
      if (i == 11) {
        paramJSONArray = Calendar.getInstance().getDisplayNames(7, 1, Locale.getDefault());
      } else {
        paramJSONArray = Calendar.getInstance().getDisplayNames(2, 2, Locale.getDefault());
      }
    }
    Collections.sort(localArrayList, new Comparator()
    {
      public int compare(String paramAnonymousString1, String paramAnonymousString2)
      {
        return ((Integer)paramJSONArray.get(paramAnonymousString1)).compareTo((Integer)paramJSONArray.get(paramAnonymousString2));
      }
    });
    int i = 0;
    while (i < localArrayList.size())
    {
      localJSONArray.put(localArrayList.get(i));
      i += 1;
    }
    paramJSONArray = localJSONObject.put("value", localJSONArray);
    return paramJSONArray;
  }
  
  /* Error */
  private JSONObject getDatePattern(JSONArray paramJSONArray)
    throws GlobalizationError
  {
    // Byte code:
    //   0: new 115	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 116	org/json/JSONObject:<init>	()V
    //   7: astore 5
    //   9: aload_0
    //   10: getfield 292	org/apache/cordova/Globalization:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   13: invokeinterface 298 1 0
    //   18: invokestatic 304	android/text/format/DateFormat:getDateFormat	(Landroid/content/Context;)Ljava/text/DateFormat;
    //   21: checkcast 306	java/text/SimpleDateFormat
    //   24: astore 4
    //   26: aload_0
    //   27: getfield 292	org/apache/cordova/Globalization:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   30: invokeinterface 298 1 0
    //   35: invokestatic 309	android/text/format/DateFormat:getTimeFormat	(Landroid/content/Context;)Ljava/text/DateFormat;
    //   38: checkcast 306	java/text/SimpleDateFormat
    //   41: astore 6
    //   43: new 311	java/lang/StringBuilder
    //   46: dup
    //   47: invokespecial 312	java/lang/StringBuilder:<init>	()V
    //   50: aload 4
    //   52: invokevirtual 315	java/text/SimpleDateFormat:toLocalizedPattern	()Ljava/lang/String;
    //   55: invokevirtual 319	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: ldc_w 321
    //   61: invokevirtual 319	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: aload 6
    //   66: invokevirtual 315	java/text/SimpleDateFormat:toLocalizedPattern	()Ljava/lang/String;
    //   69: invokevirtual 319	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: invokevirtual 324	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   75: astore_2
    //   76: aload_1
    //   77: iconst_0
    //   78: invokevirtual 122	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   81: invokevirtual 218	org/json/JSONObject:length	()I
    //   84: iconst_1
    //   85: if_icmple +167 -> 252
    //   88: aload 4
    //   90: astore_3
    //   91: aload_1
    //   92: iconst_0
    //   93: invokevirtual 122	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   96: ldc 82
    //   98: invokevirtual 222	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   101: checkcast 115	org/json/JSONObject
    //   104: ldc 28
    //   106: invokevirtual 226	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   109: ifne +50 -> 159
    //   112: aload_1
    //   113: iconst_0
    //   114: invokevirtual 122	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   117: ldc 82
    //   119: invokevirtual 222	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   122: checkcast 115	org/json/JSONObject
    //   125: ldc 28
    //   127: invokevirtual 222	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   130: checkcast 193	java/lang/String
    //   133: astore_2
    //   134: aload_2
    //   135: ldc 64
    //   137: invokevirtual 229	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   140: ifeq +189 -> 329
    //   143: aload_0
    //   144: getfield 292	org/apache/cordova/Globalization:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   147: invokeinterface 298 1 0
    //   152: invokestatic 327	android/text/format/DateFormat:getMediumDateFormat	(Landroid/content/Context;)Ljava/text/DateFormat;
    //   155: checkcast 306	java/text/SimpleDateFormat
    //   158: astore_3
    //   159: new 311	java/lang/StringBuilder
    //   162: dup
    //   163: invokespecial 312	java/lang/StringBuilder:<init>	()V
    //   166: aload_3
    //   167: invokevirtual 315	java/text/SimpleDateFormat:toLocalizedPattern	()Ljava/lang/String;
    //   170: invokevirtual 319	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: ldc_w 321
    //   176: invokevirtual 319	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: aload 6
    //   181: invokevirtual 315	java/text/SimpleDateFormat:toLocalizedPattern	()Ljava/lang/String;
    //   184: invokevirtual 319	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: invokevirtual 324	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   190: astore 4
    //   192: aload 4
    //   194: astore_2
    //   195: aload_1
    //   196: iconst_0
    //   197: invokevirtual 122	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   200: ldc 82
    //   202: invokevirtual 222	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   205: checkcast 115	org/json/JSONObject
    //   208: ldc 88
    //   210: invokevirtual 226	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   213: ifne +39 -> 252
    //   216: aload_1
    //   217: iconst_0
    //   218: invokevirtual 122	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   221: ldc 82
    //   223: invokevirtual 222	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   226: checkcast 115	org/json/JSONObject
    //   229: ldc 88
    //   231: invokevirtual 222	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   234: checkcast 193	java/lang/String
    //   237: astore_1
    //   238: aload_1
    //   239: ldc 16
    //   241: invokevirtual 229	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   244: ifeq +125 -> 369
    //   247: aload_3
    //   248: invokevirtual 315	java/text/SimpleDateFormat:toLocalizedPattern	()Ljava/lang/String;
    //   251: astore_2
    //   252: invokestatic 332	android/text/format/Time:getCurrentTimezone	()Ljava/lang/String;
    //   255: invokestatic 338	java/util/TimeZone:getTimeZone	(Ljava/lang/String;)Ljava/util/TimeZone;
    //   258: astore_1
    //   259: aload 5
    //   261: ldc -106
    //   263: aload_2
    //   264: invokevirtual 158	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   267: pop
    //   268: aload 5
    //   270: ldc_w 340
    //   273: aload_1
    //   274: aload_1
    //   275: invokestatic 234	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   278: invokevirtual 344	java/util/Calendar:getTime	()Ljava/util/Date;
    //   281: invokevirtual 348	java/util/TimeZone:inDaylightTime	(Ljava/util/Date;)Z
    //   284: iconst_0
    //   285: invokevirtual 352	java/util/TimeZone:getDisplayName	(ZI)Ljava/lang/String;
    //   288: invokevirtual 158	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   291: pop
    //   292: aload 5
    //   294: ldc_w 354
    //   297: aload_1
    //   298: invokevirtual 357	java/util/TimeZone:getRawOffset	()I
    //   301: sipush 1000
    //   304: idiv
    //   305: invokevirtual 172	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   308: pop
    //   309: aload 5
    //   311: ldc_w 359
    //   314: aload_1
    //   315: invokevirtual 362	java/util/TimeZone:getDSTSavings	()I
    //   318: sipush 1000
    //   321: idiv
    //   322: invokevirtual 172	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   325: pop
    //   326: aload 5
    //   328: areturn
    //   329: aload_2
    //   330: ldc 61
    //   332: invokevirtual 229	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   335: ifne +15 -> 350
    //   338: aload 4
    //   340: astore_3
    //   341: aload_2
    //   342: ldc 31
    //   344: invokevirtual 229	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   347: ifeq -188 -> 159
    //   350: aload_0
    //   351: getfield 292	org/apache/cordova/Globalization:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   354: invokeinterface 298 1 0
    //   359: invokestatic 365	android/text/format/DateFormat:getLongDateFormat	(Landroid/content/Context;)Ljava/text/DateFormat;
    //   362: checkcast 306	java/text/SimpleDateFormat
    //   365: astore_3
    //   366: goto -207 -> 159
    //   369: aload 4
    //   371: astore_2
    //   372: aload_1
    //   373: ldc 97
    //   375: invokevirtual 229	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   378: ifeq -126 -> 252
    //   381: aload 6
    //   383: invokevirtual 315	java/text/SimpleDateFormat:toLocalizedPattern	()Ljava/lang/String;
    //   386: astore_2
    //   387: goto -135 -> 252
    //   390: astore_1
    //   391: new 111	org/apache/cordova/GlobalizationError
    //   394: dup
    //   395: ldc_w 367
    //   398: invokespecial 207	org/apache/cordova/GlobalizationError:<init>	(Ljava/lang/String;)V
    //   401: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	402	0	this	Globalization
    //   0	402	1	paramJSONArray	JSONArray
    //   75	312	2	localObject1	Object
    //   90	276	3	localObject2	Object
    //   24	346	4	localObject3	Object
    //   7	320	5	localJSONObject	JSONObject
    //   41	341	6	localSimpleDateFormat	SimpleDateFormat
    // Exception table:
    //   from	to	target	type
    //   9	76	390	java/lang/Exception
    //   76	88	390	java/lang/Exception
    //   91	159	390	java/lang/Exception
    //   159	192	390	java/lang/Exception
    //   195	252	390	java/lang/Exception
    //   252	326	390	java/lang/Exception
    //   329	338	390	java/lang/Exception
    //   341	350	390	java/lang/Exception
    //   350	366	390	java/lang/Exception
    //   372	387	390	java/lang/Exception
  }
  
  private JSONObject getDateToString(JSONArray paramJSONArray)
    throws GlobalizationError
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      Date localDate = new Date(((Long)paramJSONArray.getJSONObject(0).get("date")).longValue());
      paramJSONArray = localJSONObject.put("value", new SimpleDateFormat(getDatePattern(paramJSONArray).getString("pattern")).format(localDate));
      return paramJSONArray;
    }
    catch (Exception paramJSONArray)
    {
      throw new GlobalizationError("FORMATTING_ERROR");
    }
  }
  
  private JSONObject getFirstDayOfWeek(JSONArray paramJSONArray)
    throws GlobalizationError
  {
    paramJSONArray = new JSONObject();
    try
    {
      paramJSONArray = paramJSONArray.put("value", Calendar.getInstance(Locale.getDefault()).getFirstDayOfWeek());
      return paramJSONArray;
    }
    catch (Exception paramJSONArray)
    {
      throw new GlobalizationError("UNKNOWN_ERROR");
    }
  }
  
  private JSONObject getIsDayLightSavingsTime(JSONArray paramJSONArray)
    throws GlobalizationError
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      paramJSONArray = new Date(((Long)paramJSONArray.getJSONObject(0).get("date")).longValue());
      paramJSONArray = localJSONObject.put("dst", TimeZone.getTimeZone(Time.getCurrentTimezone()).inDaylightTime(paramJSONArray));
      return paramJSONArray;
    }
    catch (Exception paramJSONArray)
    {
      throw new GlobalizationError("UNKNOWN_ERROR");
    }
  }
  
  private JSONObject getLocaleName()
    throws GlobalizationError
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("value", Locale.getDefault().toString());
      return localJSONObject;
    }
    catch (Exception localException)
    {
      throw new GlobalizationError("UNKNOWN_ERROR");
    }
  }
  
  private DecimalFormat getNumberFormatInstance(JSONArray paramJSONArray)
    throws JSONException
  {
    DecimalFormat localDecimalFormat = (DecimalFormat)DecimalFormat.getInstance(Locale.getDefault());
    try
    {
      if ((paramJSONArray.getJSONObject(0).length() > 1) && (!((JSONObject)paramJSONArray.getJSONObject(0).get("options")).isNull("type")))
      {
        paramJSONArray = (String)((JSONObject)paramJSONArray.getJSONObject(0).get("options")).get("type");
        if (paramJSONArray.equalsIgnoreCase("currency")) {
          return (DecimalFormat)DecimalFormat.getCurrencyInstance(Locale.getDefault());
        }
        if (paramJSONArray.equalsIgnoreCase("percent"))
        {
          paramJSONArray = (DecimalFormat)DecimalFormat.getPercentInstance(Locale.getDefault());
          return paramJSONArray;
        }
      }
    }
    catch (JSONException paramJSONArray) {}
    return localDecimalFormat;
  }
  
  /* Error */
  private JSONObject getNumberPattern(JSONArray paramJSONArray)
    throws GlobalizationError
  {
    // Byte code:
    //   0: new 115	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 116	org/json/JSONObject:<init>	()V
    //   7: astore 7
    //   9: invokestatic 132	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   12: invokestatic 405	java/text/DecimalFormat:getInstance	(Ljava/util/Locale;)Ljava/text/NumberFormat;
    //   15: checkcast 134	java/text/DecimalFormat
    //   18: astore 5
    //   20: aload 5
    //   22: invokevirtual 185	java/text/DecimalFormat:getDecimalFormatSymbols	()Ljava/text/DecimalFormatSymbols;
    //   25: invokevirtual 191	java/text/DecimalFormatSymbols:getDecimalSeparator	()C
    //   28: invokestatic 197	java/lang/String:valueOf	(C)Ljava/lang/String;
    //   31: astore 6
    //   33: aload 5
    //   35: astore_3
    //   36: aload 6
    //   38: astore 4
    //   40: aload_1
    //   41: iconst_0
    //   42: invokevirtual 122	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   45: invokevirtual 218	org/json/JSONObject:length	()I
    //   48: ifle +81 -> 129
    //   51: aload 5
    //   53: astore_3
    //   54: aload 6
    //   56: astore 4
    //   58: aload_1
    //   59: iconst_0
    //   60: invokevirtual 122	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   63: ldc 82
    //   65: invokevirtual 222	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   68: checkcast 115	org/json/JSONObject
    //   71: ldc 100
    //   73: invokevirtual 226	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   76: ifne +53 -> 129
    //   79: aload_1
    //   80: iconst_0
    //   81: invokevirtual 122	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   84: ldc 82
    //   86: invokevirtual 222	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   89: checkcast 115	org/json/JSONObject
    //   92: ldc 100
    //   94: invokevirtual 222	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   97: checkcast 193	java/lang/String
    //   100: astore_1
    //   101: aload_1
    //   102: ldc 10
    //   104: invokevirtual 229	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   107: ifeq +138 -> 245
    //   110: invokestatic 132	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   113: invokestatic 138	java/text/DecimalFormat:getCurrencyInstance	(Ljava/util/Locale;)Ljava/text/NumberFormat;
    //   116: checkcast 134	java/text/DecimalFormat
    //   119: astore_3
    //   120: aload_3
    //   121: invokevirtual 185	java/text/DecimalFormat:getDecimalFormatSymbols	()Ljava/text/DecimalFormatSymbols;
    //   124: invokevirtual 411	java/text/DecimalFormatSymbols:getCurrencySymbol	()Ljava/lang/String;
    //   127: astore 4
    //   129: aload 7
    //   131: ldc -106
    //   133: aload_3
    //   134: invokevirtual 154	java/text/DecimalFormat:toPattern	()Ljava/lang/String;
    //   137: invokevirtual 158	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   140: pop
    //   141: aload 7
    //   143: ldc_w 413
    //   146: aload 4
    //   148: invokevirtual 158	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   151: pop
    //   152: aload 7
    //   154: ldc -91
    //   156: aload_3
    //   157: invokevirtual 169	java/text/DecimalFormat:getMinimumFractionDigits	()I
    //   160: invokevirtual 172	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   163: pop
    //   164: aload 7
    //   166: ldc -82
    //   168: new 176	java/lang/Integer
    //   171: dup
    //   172: iconst_0
    //   173: invokespecial 179	java/lang/Integer:<init>	(I)V
    //   176: invokevirtual 158	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   179: pop
    //   180: aload 7
    //   182: ldc_w 415
    //   185: aload_3
    //   186: invokevirtual 418	java/text/DecimalFormat:getPositivePrefix	()Ljava/lang/String;
    //   189: invokevirtual 158	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   192: pop
    //   193: aload 7
    //   195: ldc_w 420
    //   198: aload_3
    //   199: invokevirtual 423	java/text/DecimalFormat:getNegativePrefix	()Ljava/lang/String;
    //   202: invokevirtual 158	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   205: pop
    //   206: aload 7
    //   208: ldc -75
    //   210: aload_3
    //   211: invokevirtual 185	java/text/DecimalFormat:getDecimalFormatSymbols	()Ljava/text/DecimalFormatSymbols;
    //   214: invokevirtual 191	java/text/DecimalFormatSymbols:getDecimalSeparator	()C
    //   217: invokestatic 197	java/lang/String:valueOf	(C)Ljava/lang/String;
    //   220: invokevirtual 158	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   223: pop
    //   224: aload 7
    //   226: ldc -57
    //   228: aload_3
    //   229: invokevirtual 185	java/text/DecimalFormat:getDecimalFormatSymbols	()Ljava/text/DecimalFormatSymbols;
    //   232: invokevirtual 202	java/text/DecimalFormatSymbols:getGroupingSeparator	()C
    //   235: invokestatic 197	java/lang/String:valueOf	(C)Ljava/lang/String;
    //   238: invokevirtual 158	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   241: pop
    //   242: aload 7
    //   244: areturn
    //   245: aload 5
    //   247: astore_3
    //   248: aload 6
    //   250: astore 4
    //   252: aload_1
    //   253: ldc 85
    //   255: invokevirtual 229	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   258: ifeq -129 -> 129
    //   261: invokestatic 132	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   264: invokestatic 408	java/text/DecimalFormat:getPercentInstance	(Ljava/util/Locale;)Ljava/text/NumberFormat;
    //   267: checkcast 134	java/text/DecimalFormat
    //   270: astore_3
    //   271: aload_3
    //   272: invokevirtual 185	java/text/DecimalFormat:getDecimalFormatSymbols	()Ljava/text/DecimalFormatSymbols;
    //   275: invokevirtual 426	java/text/DecimalFormatSymbols:getPercent	()C
    //   278: istore_2
    //   279: iload_2
    //   280: invokestatic 197	java/lang/String:valueOf	(C)Ljava/lang/String;
    //   283: astore 4
    //   285: goto -156 -> 129
    //   288: astore_1
    //   289: new 111	org/apache/cordova/GlobalizationError
    //   292: dup
    //   293: ldc_w 367
    //   296: invokespecial 207	org/apache/cordova/GlobalizationError:<init>	(Ljava/lang/String;)V
    //   299: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	300	0	this	Globalization
    //   0	300	1	paramJSONArray	JSONArray
    //   278	2	2	c	char
    //   35	237	3	localDecimalFormat1	DecimalFormat
    //   38	246	4	str1	String
    //   18	228	5	localDecimalFormat2	DecimalFormat
    //   31	218	6	str2	String
    //   7	236	7	localJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   9	33	288	java/lang/Exception
    //   40	51	288	java/lang/Exception
    //   58	129	288	java/lang/Exception
    //   129	242	288	java/lang/Exception
    //   252	279	288	java/lang/Exception
  }
  
  private JSONObject getNumberToString(JSONArray paramJSONArray)
    throws GlobalizationError
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      paramJSONArray = localJSONObject.put("value", getNumberFormatInstance(paramJSONArray).format(paramJSONArray.getJSONObject(0).get("number")));
      return paramJSONArray;
    }
    catch (Exception paramJSONArray)
    {
      throw new GlobalizationError("FORMATTING_ERROR");
    }
  }
  
  private JSONObject getPreferredLanguage()
    throws GlobalizationError
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("value", Locale.getDefault().getDisplayLanguage().toString());
      return localJSONObject;
    }
    catch (Exception localException)
    {
      throw new GlobalizationError("UNKNOWN_ERROR");
    }
  }
  
  private JSONObject getStringToNumber(JSONArray paramJSONArray)
    throws GlobalizationError
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      paramJSONArray = localJSONObject.put("value", getNumberFormatInstance(paramJSONArray).parse((String)paramJSONArray.getJSONObject(0).get("numberString")));
      return paramJSONArray;
    }
    catch (Exception paramJSONArray)
    {
      throw new GlobalizationError("PARSING_ERROR");
    }
  }
  
  private JSONObject getStringtoDate(JSONArray paramJSONArray)
    throws GlobalizationError
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      paramJSONArray = new SimpleDateFormat(getDatePattern(paramJSONArray).getString("pattern")).parse(paramJSONArray.getJSONObject(0).get("dateString").toString());
      Time localTime = new Time();
      localTime.set(paramJSONArray.getTime());
      localJSONObject.put("year", year);
      localJSONObject.put("month", month);
      localJSONObject.put("day", monthDay);
      localJSONObject.put("hour", hour);
      localJSONObject.put("minute", minute);
      localJSONObject.put("second", second);
      localJSONObject.put("millisecond", new Long(0L));
      return localJSONObject;
    }
    catch (Exception paramJSONArray)
    {
      throw new GlobalizationError("PARSING_ERROR");
    }
  }
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
  {
    new JSONObject();
    try
    {
      if (paramString.equals("getLocaleName")) {
        paramString = getLocaleName();
      }
      for (;;)
      {
        paramCallbackContext.success(paramString);
        break label285;
        if (paramString.equals("getPreferredLanguage"))
        {
          paramString = getPreferredLanguage();
        }
        else if (paramString.equalsIgnoreCase("dateToString"))
        {
          paramString = getDateToString(paramJSONArray);
        }
        else if (paramString.equalsIgnoreCase("stringToDate"))
        {
          paramString = getStringtoDate(paramJSONArray);
        }
        else
        {
          if (!paramString.equalsIgnoreCase("getDatePattern")) {
            break;
          }
          paramString = getDatePattern(paramJSONArray);
        }
      }
      if (paramString.equalsIgnoreCase("getDateNames")) {
        if (Build.VERSION.SDK_INT < 9) {
          throw new GlobalizationError("UNKNOWN_ERROR");
        }
      }
    }
    catch (GlobalizationError paramString)
    {
      for (;;)
      {
        paramCallbackContext.sendPluginResult(new PluginResult(PluginResult.Status.ERROR, paramString.toJson()));
        break label285;
        paramString = getDateNames(paramJSONArray);
        continue;
        if (paramString.equalsIgnoreCase("isDayLightSavingsTime"))
        {
          paramString = getIsDayLightSavingsTime(paramJSONArray);
        }
        else if (paramString.equalsIgnoreCase("getFirstDayOfWeek"))
        {
          paramString = getFirstDayOfWeek(paramJSONArray);
        }
        else if (paramString.equalsIgnoreCase("numberToString"))
        {
          paramString = getNumberToString(paramJSONArray);
        }
        else if (paramString.equalsIgnoreCase("stringToNumber"))
        {
          paramString = getStringToNumber(paramJSONArray);
        }
        else if (paramString.equalsIgnoreCase("getNumberPattern"))
        {
          paramString = getNumberPattern(paramJSONArray);
        }
        else
        {
          if (!paramString.equalsIgnoreCase("getCurrencyPattern")) {
            break;
          }
          paramString = getCurrencyPattern(paramJSONArray);
        }
      }
      return false;
    }
    catch (Exception paramString)
    {
      paramCallbackContext.sendPluginResult(new PluginResult(PluginResult.Status.JSON_EXCEPTION));
    }
    label285:
    return true;
  }
}
