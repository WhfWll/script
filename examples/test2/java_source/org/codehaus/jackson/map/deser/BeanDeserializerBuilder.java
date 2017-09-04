package org.codehaus.jackson.map.deser;

import java.util.HashMap;
import java.util.HashSet;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.deser.impl.BeanPropertyMap;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;

public class BeanDeserializerBuilder
{
  protected SettableAnyProperty _anySetter;
  protected HashMap<String, SettableBeanProperty> _backRefProperties;
  protected final BasicBeanDescription _beanDesc;
  protected CreatorContainer _creators;
  protected HashSet<String> _ignorableProps;
  protected boolean _ignoreAllUnknown;
  protected final HashMap<String, SettableBeanProperty> _properties = new HashMap();
  
  public BeanDeserializerBuilder(BasicBeanDescription paramBasicBeanDescription)
  {
    _beanDesc = paramBasicBeanDescription;
  }
  
  public void addBackReferenceProperty(String paramString, SettableBeanProperty paramSettableBeanProperty)
  {
    if (_backRefProperties == null) {
      _backRefProperties = new HashMap(4);
    }
    _backRefProperties.put(paramString, paramSettableBeanProperty);
  }
  
  public void addIgnorable(String paramString)
  {
    if (_ignorableProps == null) {
      _ignorableProps = new HashSet();
    }
    _ignorableProps.add(paramString);
  }
  
  public void addOrReplaceProperty(SettableBeanProperty paramSettableBeanProperty, boolean paramBoolean)
  {
    _properties.put(paramSettableBeanProperty.getName(), paramSettableBeanProperty);
  }
  
  public void addProperty(SettableBeanProperty paramSettableBeanProperty)
  {
    SettableBeanProperty localSettableBeanProperty = (SettableBeanProperty)_properties.put(paramSettableBeanProperty.getName(), paramSettableBeanProperty);
    if ((localSettableBeanProperty != null) && (localSettableBeanProperty != paramSettableBeanProperty)) {
      throw new IllegalArgumentException("Duplicate property '" + paramSettableBeanProperty.getName() + "' for " + _beanDesc.getType());
    }
  }
  
  public JsonDeserializer<?> build(BeanProperty paramBeanProperty)
  {
    BeanPropertyMap localBeanPropertyMap = new BeanPropertyMap(_properties.values());
    localBeanPropertyMap.assignIndexes();
    return new BeanDeserializer(_beanDesc.getClassInfo(), _beanDesc.getType(), paramBeanProperty, _creators, localBeanPropertyMap, _backRefProperties, _ignorableProps, _ignoreAllUnknown, _anySetter);
  }
  
  public boolean hasProperty(String paramString)
  {
    return _properties.containsKey(paramString);
  }
  
  public SettableBeanProperty removeProperty(String paramString)
  {
    return (SettableBeanProperty)_properties.remove(paramString);
  }
  
  public void setAnySetter(SettableAnyProperty paramSettableAnyProperty)
  {
    if ((_anySetter != null) && (paramSettableAnyProperty != null)) {
      throw new IllegalStateException("_anySetter already set to non-null");
    }
    _anySetter = paramSettableAnyProperty;
  }
  
  public void setCreators(CreatorContainer paramCreatorContainer)
  {
    _creators = paramCreatorContainer;
  }
  
  public void setIgnoreUnknownProperties(boolean paramBoolean)
  {
    _ignoreAllUnknown = paramBoolean;
  }
}
