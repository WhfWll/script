package org.codehaus.jackson.map.module;

import org.codehaus.jackson.Version;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.KeyDeserializer;
import org.codehaus.jackson.map.Module;
import org.codehaus.jackson.map.Module.SetupContext;

public class SimpleModule
  extends Module
{
  protected SimpleAbstractTypeResolver _abstractTypes = null;
  protected SimpleDeserializers _deserializers = null;
  protected SimpleKeyDeserializers _keyDeserializers = null;
  protected SimpleSerializers _keySerializers = null;
  protected final String _name;
  protected SimpleSerializers _serializers = null;
  protected final Version _version;
  
  public SimpleModule(String paramString, Version paramVersion)
  {
    _name = paramString;
    _version = paramVersion;
  }
  
  public <T> SimpleModule addAbstractTypeMapping(Class<T> paramClass, Class<? extends T> paramClass1)
  {
    if (_abstractTypes == null) {
      _abstractTypes = new SimpleAbstractTypeResolver();
    }
    _abstractTypes = _abstractTypes.addMapping(paramClass, paramClass1);
    return this;
  }
  
  public <T> SimpleModule addDeserializer(Class<T> paramClass, JsonDeserializer<? extends T> paramJsonDeserializer)
  {
    if (_deserializers == null) {
      _deserializers = new SimpleDeserializers();
    }
    _deserializers.addDeserializer(paramClass, paramJsonDeserializer);
    return this;
  }
  
  public SimpleModule addKeyDeserializer(Class<?> paramClass, KeyDeserializer paramKeyDeserializer)
  {
    if (_keyDeserializers == null) {
      _keyDeserializers = new SimpleKeyDeserializers();
    }
    _keyDeserializers.addDeserializer(paramClass, paramKeyDeserializer);
    return this;
  }
  
  public <T> SimpleModule addKeySerializer(Class<? extends T> paramClass, JsonSerializer<T> paramJsonSerializer)
  {
    if (_keySerializers == null) {
      _keySerializers = new SimpleSerializers();
    }
    _keySerializers.addSerializer(paramClass, paramJsonSerializer);
    return this;
  }
  
  public <T> SimpleModule addSerializer(Class<? extends T> paramClass, JsonSerializer<T> paramJsonSerializer)
  {
    if (_serializers == null) {
      _serializers = new SimpleSerializers();
    }
    _serializers.addSerializer(paramClass, paramJsonSerializer);
    return this;
  }
  
  public SimpleModule addSerializer(JsonSerializer<?> paramJsonSerializer)
  {
    if (_serializers == null) {
      _serializers = new SimpleSerializers();
    }
    _serializers.addSerializer(paramJsonSerializer);
    return this;
  }
  
  public String getModuleName()
  {
    return _name;
  }
  
  public void setupModule(Module.SetupContext paramSetupContext)
  {
    if (_serializers != null) {
      paramSetupContext.addSerializers(_serializers);
    }
    if (_deserializers != null) {
      paramSetupContext.addDeserializers(_deserializers);
    }
    if (_keySerializers != null) {
      paramSetupContext.addKeySerializers(_keySerializers);
    }
    if (_keyDeserializers != null) {
      paramSetupContext.addKeyDeserializers(_keyDeserializers);
    }
    if (_abstractTypes != null) {
      paramSetupContext.addAbstractTypeResolver(_abstractTypes);
    }
  }
  
  public Version version()
  {
    return _version;
  }
}
