package com.google.common.io;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

@Beta
public final class PatternFilenameFilter
  implements FilenameFilter
{
  private final Pattern pattern;
  
  static
  {
    JniLib.a(PatternFilenameFilter.class, 901);
  }
  
  public PatternFilenameFilter(String paramString)
  {
    this(Pattern.compile(paramString));
  }
  
  public PatternFilenameFilter(Pattern paramPattern)
  {
    pattern = ((Pattern)Preconditions.checkNotNull(paramPattern));
  }
  
  public native boolean accept(File paramFile, String paramString);
}
