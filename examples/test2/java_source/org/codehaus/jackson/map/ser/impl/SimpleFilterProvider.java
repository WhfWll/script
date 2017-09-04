package org.codehaus.jackson.map.ser.impl;

import java.util.HashMap;
import java.util.Map;
import org.codehaus.jackson.map.ser.BeanPropertyFilter;
import org.codehaus.jackson.map.ser.FilterProvider;

public class SimpleFilterProvider
  extends FilterProvider
{
  protected BeanPropertyFilter _defaultFilter;
  protected final Map<String, BeanPropertyFilter> _filtersById = new HashMap();
  
  public SimpleFilterProvider() {}
  
  public SimpleFilterProvider(Map<String, BeanPropertyFilter> paramMap) {}
  
  public SimpleFilterProvider addFilter(String paramString, BeanPropertyFilter paramBeanPropertyFilter)
  {
    _filtersById.put(paramString, paramBeanPropertyFilter);
    return this;
  }
  
  public BeanPropertyFilter findFilter(Object paramObject)
  {
    BeanPropertyFilter localBeanPropertyFilter = (BeanPropertyFilter)_filtersById.get(paramObject);
    paramObject = localBeanPropertyFilter;
    if (localBeanPropertyFilter == null) {
      paramObject = _defaultFilter;
    }
    return paramObject;
  }
  
  public BeanPropertyFilter removeFilter(String paramString)
  {
    return (BeanPropertyFilter)_filtersById.remove(paramString);
  }
  
  public SimpleFilterProvider setDefaultFilter(BeanPropertyFilter paramBeanPropertyFilter)
  {
    _defaultFilter = paramBeanPropertyFilter;
    return this;
  }
}
