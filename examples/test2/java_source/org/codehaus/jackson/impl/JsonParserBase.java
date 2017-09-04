package org.codehaus.jackson.impl;

import java.io.IOException;
import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.JsonLocation;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.Version;
import org.codehaus.jackson.io.IOContext;
import org.codehaus.jackson.util.ByteArrayBuilder;
import org.codehaus.jackson.util.TextBuffer;
import org.codehaus.jackson.util.VersionUtil;

public abstract class JsonParserBase
  extends JsonParserMinimalBase
{
  protected byte[] _binaryValue;
  protected ByteArrayBuilder _byteArrayBuilder = null;
  protected boolean _closed;
  protected long _currInputProcessed = 0L;
  protected int _currInputRow = 1;
  protected int _currInputRowStart = 0;
  protected int _inputEnd = 0;
  protected int _inputPtr = 0;
  protected final IOContext _ioContext;
  protected boolean _nameCopied = false;
  protected char[] _nameCopyBuffer = null;
  protected JsonToken _nextToken;
  protected JsonReadContext _parsingContext;
  protected final TextBuffer _textBuffer;
  protected int _tokenInputCol = 0;
  protected int _tokenInputRow = 1;
  protected long _tokenInputTotal = 0L;
  
  protected JsonParserBase(IOContext paramIOContext, int paramInt)
  {
    _features = paramInt;
    _ioContext = paramIOContext;
    _textBuffer = paramIOContext.constructTextBuffer();
    _parsingContext = JsonReadContext.createRootContext(_tokenInputRow, _tokenInputCol);
  }
  
  protected abstract void _closeInput()
    throws IOException;
  
  protected abstract byte[] _decodeBase64(Base64Variant paramBase64Variant)
    throws IOException, JsonParseException;
  
  protected abstract void _finishString()
    throws IOException, JsonParseException;
  
  public ByteArrayBuilder _getByteArrayBuilder()
  {
    if (_byteArrayBuilder == null) {
      _byteArrayBuilder = new ByteArrayBuilder();
    }
    for (;;)
    {
      return _byteArrayBuilder;
      _byteArrayBuilder.reset();
    }
  }
  
  protected void _handleEOF()
    throws JsonParseException
  {
    if (!_parsingContext.inRoot()) {
      _reportInvalidEOF(": expected close marker for " + _parsingContext.getTypeDesc() + " (from " + _parsingContext.getStartLocation(_ioContext.getSourceReference()) + ")");
    }
  }
  
  protected void _releaseBuffers()
    throws IOException
  {
    _textBuffer.releaseBuffers();
    char[] arrayOfChar = _nameCopyBuffer;
    if (arrayOfChar != null)
    {
      _nameCopyBuffer = null;
      _ioContext.releaseNameCopyBuffer(arrayOfChar);
    }
  }
  
  protected void _reportMismatchedEndMarker(int paramInt, char paramChar)
    throws JsonParseException
  {
    String str = "" + _parsingContext.getStartLocation(_ioContext.getSourceReference());
    _reportError("Unexpected close marker '" + (char)paramInt + "': expected '" + paramChar + "' (for " + _parsingContext.getTypeDesc() + " starting at " + str + ")");
  }
  
  public void close()
    throws IOException
  {
    if (!_closed) {
      _closed = true;
    }
    try
    {
      _closeInput();
      return;
    }
    finally
    {
      _releaseBuffers();
    }
  }
  
  public JsonLocation getCurrentLocation()
  {
    int i = _inputPtr;
    int j = _currInputRowStart;
    return new JsonLocation(_ioContext.getSourceReference(), _currInputProcessed + _inputPtr - 1L, _currInputRow, i - j + 1);
  }
  
  public String getCurrentName()
    throws IOException, JsonParseException
  {
    if ((_currToken == JsonToken.START_OBJECT) || (_currToken == JsonToken.START_ARRAY)) {
      return _parsingContext.getParent().getCurrentName();
    }
    return _parsingContext.getCurrentName();
  }
  
  public JsonReadContext getParsingContext()
  {
    return _parsingContext;
  }
  
  public final long getTokenCharacterOffset()
  {
    return _tokenInputTotal;
  }
  
  public final int getTokenColumnNr()
  {
    return _tokenInputCol + 1;
  }
  
  public final int getTokenLineNr()
  {
    return _tokenInputRow;
  }
  
  public JsonLocation getTokenLocation()
  {
    return new JsonLocation(_ioContext.getSourceReference(), getTokenCharacterOffset(), getTokenLineNr(), getTokenColumnNr());
  }
  
  public boolean hasTextCharacters()
  {
    if (_currToken != null) {}
    switch (1.$SwitchMap$org$codehaus$jackson$JsonToken[_currToken.ordinal()])
    {
    default: 
      return false;
    case 1: 
      return _nameCopied;
    }
    return true;
  }
  
  public boolean isClosed()
  {
    return _closed;
  }
  
  protected abstract boolean loadMore()
    throws IOException;
  
  protected final void loadMoreGuaranteed()
    throws IOException
  {
    if (!loadMore()) {
      _reportInvalidEOF();
    }
  }
  
  public Version version()
  {
    return VersionUtil.versionFor(getClass());
  }
}
