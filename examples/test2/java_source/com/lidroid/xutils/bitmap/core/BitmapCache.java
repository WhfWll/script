package com.lidroid.xutils.bitmap.core;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.ExifInterface;
import com.lidroid.xutils.bitmap.BitmapDisplayConfig;
import com.lidroid.xutils.bitmap.BitmapGlobalConfig;
import com.lidroid.xutils.bitmap.factory.BitmapFactory;
import com.lidroid.xutils.cache.FileNameGenerator;
import com.lidroid.xutils.cache.LruDiskCache;
import com.lidroid.xutils.cache.LruDiskCache.Snapshot;
import com.lidroid.xutils.cache.LruMemoryCache;
import com.lidroid.xutils.util.IOUtils;
import com.lidroid.xutils.util.LogUtils;
import com.lidroid.xutils.util.OtherUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class BitmapCache
{
  private final int DISK_CACHE_INDEX = 0;
  private BitmapGlobalConfig globalConfig;
  private final Object mDiskCacheLock = new Object();
  private LruDiskCache mDiskLruCache;
  private LruMemoryCache<MemoryCacheKey, Bitmap> mMemoryCache;
  
  public BitmapCache(BitmapGlobalConfig paramBitmapGlobalConfig)
  {
    if (paramBitmapGlobalConfig == null) {
      throw new IllegalArgumentException("globalConfig may not be null");
    }
    globalConfig = paramBitmapGlobalConfig;
  }
  
  private Bitmap addBitmapToMemoryCache(String paramString, BitmapDisplayConfig paramBitmapDisplayConfig, Bitmap paramBitmap, long paramLong)
    throws IOException
  {
    Bitmap localBitmap = paramBitmap;
    if (paramBitmapDisplayConfig != null)
    {
      BitmapFactory localBitmapFactory = paramBitmapDisplayConfig.getBitmapFactory();
      localBitmap = paramBitmap;
      if (localBitmapFactory != null) {
        localBitmap = localBitmapFactory.cloneNew().createBitmap(paramBitmap);
      }
    }
    if ((paramString != null) && (localBitmap != null) && (globalConfig.isMemoryCacheEnabled()) && (mMemoryCache != null))
    {
      paramString = new MemoryCacheKey(paramString, paramBitmapDisplayConfig, null);
      mMemoryCache.put(paramString, localBitmap, paramLong);
    }
    return localBitmap;
  }
  
  private Bitmap decodeBitmapMeta(BitmapMeta paramBitmapMeta, BitmapDisplayConfig paramBitmapDisplayConfig)
    throws IOException
  {
    if (paramBitmapMeta == null) {}
    do
    {
      return null;
      if (inputStream != null)
      {
        if ((paramBitmapDisplayConfig == null) || (paramBitmapDisplayConfig.isShowOriginal())) {
          return BitmapDecoder.decodeFileDescriptor(inputStream.getFD());
        }
        return BitmapDecoder.decodeSampledBitmapFromDescriptor(inputStream.getFD(), paramBitmapDisplayConfig.getBitmapMaxSize(), paramBitmapDisplayConfig.getBitmapConfig());
      }
    } while (data == null);
    if ((paramBitmapDisplayConfig == null) || (paramBitmapDisplayConfig.isShowOriginal())) {
      return BitmapDecoder.decodeByteArray(data);
    }
    return BitmapDecoder.decodeSampledBitmapFromByteArray(data, paramBitmapDisplayConfig.getBitmapMaxSize(), paramBitmapDisplayConfig.getBitmapConfig());
  }
  
  private Bitmap rotateBitmapIfNeeded(String paramString, BitmapDisplayConfig paramBitmapDisplayConfig, Bitmap paramBitmap)
  {
    Bitmap localBitmap1 = paramBitmap;
    Bitmap localBitmap2 = localBitmap1;
    if (paramBitmapDisplayConfig != null) {
      localBitmap2 = localBitmap1;
    }
    for (;;)
    {
      try
      {
        if (paramBitmapDisplayConfig.isAutoRotation())
        {
          paramString = getBitmapFileFromDiskCache(paramString);
          localBitmap2 = localBitmap1;
          if (paramString != null)
          {
            boolean bool = paramString.exists();
            localBitmap2 = localBitmap1;
            if (!bool) {}
          }
        }
        try
        {
          paramString = new ExifInterface(paramString.getPath());
          switch (paramString.getAttributeInt("Orientation", 0))
          {
          }
        }
        catch (Throwable paramString)
        {
          localBitmap2 = localBitmap1;
          continue;
          i = 90;
          continue;
          i = 180;
          continue;
          i = 270;
          continue;
        }
        localBitmap2 = localBitmap1;
        if (i != 0)
        {
          paramString = new Matrix();
          paramString.postRotate(i);
          localBitmap2 = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), paramString, true);
          paramBitmap.recycle();
        }
        return localBitmap2;
      }
      finally {}
      int i = 0;
    }
  }
  
  public void clearCache()
  {
    clearMemoryCache();
    clearDiskCache();
  }
  
  public void clearCache(String paramString)
  {
    clearMemoryCache(paramString);
    clearDiskCache(paramString);
  }
  
  public void clearDiskCache()
  {
    synchronized (mDiskCacheLock)
    {
      if (mDiskLruCache != null)
      {
        boolean bool = mDiskLruCache.isClosed();
        if (bool) {}
      }
      try
      {
        mDiskLruCache.delete();
        mDiskLruCache.close();
        mDiskLruCache = null;
        initDiskCache();
        return;
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          LogUtils.e(localThrowable.getMessage(), localThrowable);
        }
      }
    }
  }
  
  public void clearDiskCache(String paramString)
  {
    synchronized (mDiskCacheLock)
    {
      if (mDiskLruCache != null)
      {
        boolean bool = mDiskLruCache.isClosed();
        if (bool) {}
      }
      try
      {
        mDiskLruCache.remove(paramString);
        return;
      }
      catch (Throwable paramString)
      {
        for (;;)
        {
          LogUtils.e(paramString.getMessage(), paramString);
        }
      }
    }
  }
  
  public void clearMemoryCache()
  {
    if (mMemoryCache != null) {
      mMemoryCache.evictAll();
    }
  }
  
  public void clearMemoryCache(String paramString)
  {
    paramString = new MemoryCacheKey(paramString, null, null);
    if (mMemoryCache != null) {}
    for (;;)
    {
      if (!mMemoryCache.containsKey(paramString)) {
        return;
      }
      mMemoryCache.remove(paramString);
    }
  }
  
  public void close()
  {
    synchronized (mDiskCacheLock)
    {
      LruDiskCache localLruDiskCache = mDiskLruCache;
      if (localLruDiskCache != null) {}
      try
      {
        if (!mDiskLruCache.isClosed()) {
          mDiskLruCache.close();
        }
        mDiskLruCache = null;
        return;
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          LogUtils.e(localThrowable.getMessage(), localThrowable);
        }
      }
    }
  }
  
  /* Error */
  public Bitmap downloadBitmap(String paramString, BitmapDisplayConfig paramBitmapDisplayConfig, com.lidroid.xutils.BitmapUtils.BitmapLoadTask<?> paramBitmapLoadTask)
  {
    // Byte code:
    //   0: new 8	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta
    //   3: dup
    //   4: aload_0
    //   5: aconst_null
    //   6: invokespecial 230	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:<init>	(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;)V
    //   9: astore 24
    //   11: aconst_null
    //   12: astore 17
    //   14: aconst_null
    //   15: astore 22
    //   17: aconst_null
    //   18: astore 18
    //   20: aconst_null
    //   21: astore 20
    //   23: aconst_null
    //   24: astore 16
    //   26: aconst_null
    //   27: astore 23
    //   29: aconst_null
    //   30: astore 19
    //   32: aconst_null
    //   33: astore 21
    //   35: aconst_null
    //   36: astore 9
    //   38: aconst_null
    //   39: astore 15
    //   41: aconst_null
    //   42: astore 14
    //   44: aload 22
    //   46: astore 10
    //   48: aload 23
    //   50: astore 11
    //   52: aload 18
    //   54: astore 6
    //   56: aload 19
    //   58: astore 7
    //   60: aload 15
    //   62: astore 12
    //   64: aload 20
    //   66: astore 13
    //   68: aload 21
    //   70: astore 8
    //   72: aload_0
    //   73: getfield 41	com/lidroid/xutils/bitmap/core/BitmapCache:globalConfig	Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
    //   76: invokevirtual 233	com/lidroid/xutils/bitmap/BitmapGlobalConfig:isDiskCacheEnabled	()Z
    //   79: ifeq +864 -> 943
    //   82: aload 22
    //   84: astore 10
    //   86: aload 23
    //   88: astore 11
    //   90: aload 18
    //   92: astore 6
    //   94: aload 19
    //   96: astore 7
    //   98: aload_0
    //   99: getfield 188	com/lidroid/xutils/bitmap/core/BitmapCache:mDiskLruCache	Lcom/lidroid/xutils/cache/LruDiskCache;
    //   102: ifnonnull +23 -> 125
    //   105: aload 22
    //   107: astore 10
    //   109: aload 23
    //   111: astore 11
    //   113: aload 18
    //   115: astore 6
    //   117: aload 19
    //   119: astore 7
    //   121: aload_0
    //   122: invokevirtual 202	com/lidroid/xutils/bitmap/core/BitmapCache:initDiskCache	()V
    //   125: aload 22
    //   127: astore 10
    //   129: aload 23
    //   131: astore 11
    //   133: aload 18
    //   135: astore 6
    //   137: aload 19
    //   139: astore 7
    //   141: aload_0
    //   142: getfield 188	com/lidroid/xutils/bitmap/core/BitmapCache:mDiskLruCache	Lcom/lidroid/xutils/cache/LruDiskCache;
    //   145: astore 22
    //   147: aload 15
    //   149: astore 12
    //   151: aload 20
    //   153: astore 13
    //   155: aload 21
    //   157: astore 8
    //   159: aload 22
    //   161: ifnull +782 -> 943
    //   164: aload 14
    //   166: astore 12
    //   168: aload 17
    //   170: astore 8
    //   172: aload 18
    //   174: astore 6
    //   176: aload 19
    //   178: astore 7
    //   180: aload_0
    //   181: getfield 188	com/lidroid/xutils/bitmap/core/BitmapCache:mDiskLruCache	Lcom/lidroid/xutils/cache/LruDiskCache;
    //   184: aload_1
    //   185: invokevirtual 237	com/lidroid/xutils/cache/LruDiskCache:get	(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    //   188: astore 13
    //   190: aload 16
    //   192: astore 11
    //   194: aload 13
    //   196: astore 10
    //   198: aload 13
    //   200: ifnonnull +265 -> 465
    //   203: aload 14
    //   205: astore 12
    //   207: aload 17
    //   209: astore 8
    //   211: aload 13
    //   213: astore 9
    //   215: aload 18
    //   217: astore 6
    //   219: aload 13
    //   221: astore 7
    //   223: aload_0
    //   224: getfield 188	com/lidroid/xutils/bitmap/core/BitmapCache:mDiskLruCache	Lcom/lidroid/xutils/cache/LruDiskCache;
    //   227: aload_1
    //   228: invokevirtual 241	com/lidroid/xutils/cache/LruDiskCache:edit	(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    //   231: astore 19
    //   233: aload 16
    //   235: astore 11
    //   237: aload 13
    //   239: astore 10
    //   241: aload 19
    //   243: ifnull +222 -> 465
    //   246: aload 14
    //   248: astore 12
    //   250: aload 17
    //   252: astore 8
    //   254: aload 13
    //   256: astore 9
    //   258: aload 18
    //   260: astore 6
    //   262: aload 13
    //   264: astore 7
    //   266: aload 19
    //   268: iconst_0
    //   269: invokevirtual 247	com/lidroid/xutils/cache/LruDiskCache$Editor:newOutputStream	(I)Ljava/io/OutputStream;
    //   272: astore 11
    //   274: aload 14
    //   276: astore 12
    //   278: aload 11
    //   280: astore 8
    //   282: aload 13
    //   284: astore 9
    //   286: aload 11
    //   288: astore 6
    //   290: aload 13
    //   292: astore 7
    //   294: aload 24
    //   296: aload_0
    //   297: getfield 41	com/lidroid/xutils/bitmap/core/BitmapCache:globalConfig	Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
    //   300: invokevirtual 251	com/lidroid/xutils/bitmap/BitmapGlobalConfig:getDownloader	()Lcom/lidroid/xutils/bitmap/download/Downloader;
    //   303: aload_1
    //   304: aload 11
    //   306: aload_3
    //   307: invokevirtual 257	com/lidroid/xutils/bitmap/download/Downloader:downloadToStream	(Ljava/lang/String;Ljava/io/OutputStream;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)J
    //   310: putfield 261	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:expiryTimestamp	J
    //   313: aload 14
    //   315: astore 12
    //   317: aload 11
    //   319: astore 8
    //   321: aload 13
    //   323: astore 9
    //   325: aload 11
    //   327: astore 6
    //   329: aload 13
    //   331: astore 7
    //   333: aload 24
    //   335: getfield 261	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:expiryTimestamp	J
    //   338: lconst_0
    //   339: lcmp
    //   340: ifge +40 -> 380
    //   343: aload 14
    //   345: astore 12
    //   347: aload 11
    //   349: astore 8
    //   351: aload 13
    //   353: astore 9
    //   355: aload 11
    //   357: astore 6
    //   359: aload 13
    //   361: astore 7
    //   363: aload 19
    //   365: invokevirtual 264	com/lidroid/xutils/cache/LruDiskCache$Editor:abort	()V
    //   368: aload 11
    //   370: invokestatic 270	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   373: aload 13
    //   375: invokestatic 270	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   378: aconst_null
    //   379: areturn
    //   380: aload 14
    //   382: astore 12
    //   384: aload 11
    //   386: astore 8
    //   388: aload 13
    //   390: astore 9
    //   392: aload 11
    //   394: astore 6
    //   396: aload 13
    //   398: astore 7
    //   400: aload 19
    //   402: aload 24
    //   404: getfield 261	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:expiryTimestamp	J
    //   407: invokevirtual 274	com/lidroid/xutils/cache/LruDiskCache$Editor:setEntryExpiryTimestamp	(J)V
    //   410: aload 14
    //   412: astore 12
    //   414: aload 11
    //   416: astore 8
    //   418: aload 13
    //   420: astore 9
    //   422: aload 11
    //   424: astore 6
    //   426: aload 13
    //   428: astore 7
    //   430: aload 19
    //   432: invokevirtual 277	com/lidroid/xutils/cache/LruDiskCache$Editor:commit	()V
    //   435: aload 14
    //   437: astore 12
    //   439: aload 11
    //   441: astore 8
    //   443: aload 13
    //   445: astore 9
    //   447: aload 11
    //   449: astore 6
    //   451: aload 13
    //   453: astore 7
    //   455: aload_0
    //   456: getfield 188	com/lidroid/xutils/bitmap/core/BitmapCache:mDiskLruCache	Lcom/lidroid/xutils/cache/LruDiskCache;
    //   459: aload_1
    //   460: invokevirtual 237	com/lidroid/xutils/cache/LruDiskCache:get	(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    //   463: astore 10
    //   465: aload 15
    //   467: astore 12
    //   469: aload 11
    //   471: astore 13
    //   473: aload 10
    //   475: astore 8
    //   477: aload 10
    //   479: ifnull +464 -> 943
    //   482: aload 14
    //   484: astore 12
    //   486: aload 11
    //   488: astore 8
    //   490: aload 10
    //   492: astore 9
    //   494: aload 11
    //   496: astore 6
    //   498: aload 10
    //   500: astore 7
    //   502: aload 24
    //   504: aload 10
    //   506: iconst_0
    //   507: invokevirtual 283	com/lidroid/xutils/cache/LruDiskCache$Snapshot:getInputStream	(I)Ljava/io/FileInputStream;
    //   510: putfield 85	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:inputStream	Ljava/io/FileInputStream;
    //   513: aload 14
    //   515: astore 12
    //   517: aload 11
    //   519: astore 8
    //   521: aload 10
    //   523: astore 9
    //   525: aload 11
    //   527: astore 6
    //   529: aload 10
    //   531: astore 7
    //   533: aload_0
    //   534: aload 24
    //   536: aload_2
    //   537: invokespecial 285	com/lidroid/xutils/bitmap/core/BitmapCache:decodeBitmapMeta	(Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    //   540: astore 14
    //   542: aload 14
    //   544: astore 12
    //   546: aload 11
    //   548: astore 13
    //   550: aload 10
    //   552: astore 8
    //   554: aload 14
    //   556: ifnonnull +387 -> 943
    //   559: aload 14
    //   561: astore 12
    //   563: aload 11
    //   565: astore 8
    //   567: aload 10
    //   569: astore 9
    //   571: aload 11
    //   573: astore 6
    //   575: aload 10
    //   577: astore 7
    //   579: aload 24
    //   581: aconst_null
    //   582: putfield 85	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:inputStream	Ljava/io/FileInputStream;
    //   585: aload 14
    //   587: astore 12
    //   589: aload 11
    //   591: astore 8
    //   593: aload 10
    //   595: astore 9
    //   597: aload 11
    //   599: astore 6
    //   601: aload 10
    //   603: astore 7
    //   605: aload_0
    //   606: getfield 188	com/lidroid/xutils/bitmap/core/BitmapCache:mDiskLruCache	Lcom/lidroid/xutils/cache/LruDiskCache;
    //   609: aload_1
    //   610: invokevirtual 215	com/lidroid/xutils/cache/LruDiskCache:remove	(Ljava/lang/String;)Z
    //   613: pop
    //   614: aload 11
    //   616: astore 6
    //   618: aload 10
    //   620: astore 8
    //   622: aload 14
    //   624: astore 9
    //   626: aload 9
    //   628: ifnonnull +309 -> 937
    //   631: new 287	java/io/ByteArrayOutputStream
    //   634: dup
    //   635: invokespecial 288	java/io/ByteArrayOutputStream:<init>	()V
    //   638: astore 9
    //   640: aload 9
    //   642: astore 10
    //   644: aload 8
    //   646: astore 11
    //   648: aload 9
    //   650: astore 6
    //   652: aload 8
    //   654: astore 7
    //   656: aload 24
    //   658: aload_0
    //   659: getfield 41	com/lidroid/xutils/bitmap/core/BitmapCache:globalConfig	Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
    //   662: invokevirtual 251	com/lidroid/xutils/bitmap/BitmapGlobalConfig:getDownloader	()Lcom/lidroid/xutils/bitmap/download/Downloader;
    //   665: aload_1
    //   666: aload 9
    //   668: aload_3
    //   669: invokevirtual 257	com/lidroid/xutils/bitmap/download/Downloader:downloadToStream	(Ljava/lang/String;Ljava/io/OutputStream;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)J
    //   672: putfield 261	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:expiryTimestamp	J
    //   675: aload 9
    //   677: astore 10
    //   679: aload 8
    //   681: astore 11
    //   683: aload 9
    //   685: astore 6
    //   687: aload 8
    //   689: astore 7
    //   691: aload 24
    //   693: getfield 261	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:expiryTimestamp	J
    //   696: lstore 4
    //   698: lload 4
    //   700: lconst_0
    //   701: lcmp
    //   702: ifge +54 -> 756
    //   705: aload 9
    //   707: invokestatic 270	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   710: aload 8
    //   712: invokestatic 270	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   715: aconst_null
    //   716: areturn
    //   717: astore 13
    //   719: aload 8
    //   721: astore 10
    //   723: aload 9
    //   725: astore 11
    //   727: aload 8
    //   729: astore 6
    //   731: aload 9
    //   733: astore 7
    //   735: aload 13
    //   737: invokevirtual 205	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   740: aload 13
    //   742: invokestatic 211	com/lidroid/xutils/util/LogUtils:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   745: aload 8
    //   747: astore 13
    //   749: aload 9
    //   751: astore 8
    //   753: goto +190 -> 943
    //   756: aload 9
    //   758: astore 10
    //   760: aload 8
    //   762: astore 11
    //   764: aload 9
    //   766: astore 6
    //   768: aload 8
    //   770: astore 7
    //   772: aload 24
    //   774: aload 9
    //   776: checkcast 287	java/io/ByteArrayOutputStream
    //   779: invokevirtual 292	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   782: putfield 116	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:data	[B
    //   785: aload 9
    //   787: astore 10
    //   789: aload 8
    //   791: astore 11
    //   793: aload 9
    //   795: astore 6
    //   797: aload 8
    //   799: astore 7
    //   801: aload_0
    //   802: aload 24
    //   804: aload_2
    //   805: invokespecial 285	com/lidroid/xutils/bitmap/core/BitmapCache:decodeBitmapMeta	(Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    //   808: astore 12
    //   810: aload 9
    //   812: astore_3
    //   813: aload 12
    //   815: astore 9
    //   817: aload 9
    //   819: astore 6
    //   821: aload 9
    //   823: ifnull +40 -> 863
    //   826: aload_3
    //   827: astore 10
    //   829: aload 8
    //   831: astore 11
    //   833: aload_3
    //   834: astore 6
    //   836: aload 8
    //   838: astore 7
    //   840: aload_0
    //   841: aload_1
    //   842: aload_2
    //   843: aload_0
    //   844: aload_1
    //   845: aload_2
    //   846: aload 9
    //   848: invokespecial 294	com/lidroid/xutils/bitmap/core/BitmapCache:rotateBitmapIfNeeded	(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    //   851: aload 24
    //   853: getfield 261	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:expiryTimestamp	J
    //   856: invokespecial 296	com/lidroid/xutils/bitmap/core/BitmapCache:addBitmapToMemoryCache	(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    //   859: astore_1
    //   860: aload_1
    //   861: astore 6
    //   863: aload_3
    //   864: invokestatic 270	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   867: aload 8
    //   869: invokestatic 270	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   872: aload 6
    //   874: areturn
    //   875: astore_1
    //   876: aload 11
    //   878: astore 8
    //   880: aload 10
    //   882: astore 6
    //   884: aload 8
    //   886: astore 7
    //   888: aload_1
    //   889: invokevirtual 205	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   892: aload_1
    //   893: invokestatic 211	com/lidroid/xutils/util/LogUtils:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   896: aload 10
    //   898: invokestatic 270	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   901: aload 8
    //   903: invokestatic 270	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   906: aconst_null
    //   907: areturn
    //   908: astore_1
    //   909: aload 6
    //   911: invokestatic 270	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   914: aload 7
    //   916: invokestatic 270	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   919: aload_1
    //   920: athrow
    //   921: astore_1
    //   922: aload 8
    //   924: astore 7
    //   926: goto -17 -> 909
    //   929: astore_1
    //   930: aload 6
    //   932: astore 10
    //   934: goto -54 -> 880
    //   937: aload 6
    //   939: astore_3
    //   940: goto -123 -> 817
    //   943: aload 13
    //   945: astore 6
    //   947: aload 12
    //   949: astore 9
    //   951: goto -325 -> 626
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	954	0	this	BitmapCache
    //   0	954	1	paramString	String
    //   0	954	2	paramBitmapDisplayConfig	BitmapDisplayConfig
    //   0	954	3	paramBitmapLoadTask	com.lidroid.xutils.BitmapUtils.BitmapLoadTask<?>
    //   696	3	4	l	long
    //   54	892	6	localObject1	Object
    //   58	867	7	localObject2	Object
    //   70	853	8	localObject3	Object
    //   36	914	9	localObject4	Object
    //   46	887	10	localObject5	Object
    //   50	827	11	localObject6	Object
    //   62	886	12	localObject7	Object
    //   66	483	13	localObject8	Object
    //   717	24	13	localThrowable	Throwable
    //   747	197	13	localObject9	Object
    //   42	581	14	localBitmap	Bitmap
    //   39	427	15	localObject10	Object
    //   24	210	16	localObject11	Object
    //   12	239	17	localObject12	Object
    //   18	241	18	localObject13	Object
    //   30	401	19	localEditor	com.lidroid.xutils.cache.LruDiskCache.Editor
    //   21	131	20	localObject14	Object
    //   33	123	21	localObject15	Object
    //   15	145	22	localLruDiskCache	LruDiskCache
    //   27	103	23	localObject16	Object
    //   9	843	24	localBitmapMeta	BitmapMeta
    // Exception table:
    //   from	to	target	type
    //   180	190	717	java/lang/Throwable
    //   223	233	717	java/lang/Throwable
    //   266	274	717	java/lang/Throwable
    //   294	313	717	java/lang/Throwable
    //   333	343	717	java/lang/Throwable
    //   363	368	717	java/lang/Throwable
    //   400	410	717	java/lang/Throwable
    //   430	435	717	java/lang/Throwable
    //   455	465	717	java/lang/Throwable
    //   502	513	717	java/lang/Throwable
    //   533	542	717	java/lang/Throwable
    //   579	585	717	java/lang/Throwable
    //   605	614	717	java/lang/Throwable
    //   72	82	875	java/lang/Throwable
    //   98	105	875	java/lang/Throwable
    //   121	125	875	java/lang/Throwable
    //   141	147	875	java/lang/Throwable
    //   656	675	875	java/lang/Throwable
    //   691	698	875	java/lang/Throwable
    //   735	745	875	java/lang/Throwable
    //   772	785	875	java/lang/Throwable
    //   801	810	875	java/lang/Throwable
    //   840	860	875	java/lang/Throwable
    //   72	82	908	finally
    //   98	105	908	finally
    //   121	125	908	finally
    //   141	147	908	finally
    //   180	190	908	finally
    //   223	233	908	finally
    //   266	274	908	finally
    //   294	313	908	finally
    //   333	343	908	finally
    //   363	368	908	finally
    //   400	410	908	finally
    //   430	435	908	finally
    //   455	465	908	finally
    //   502	513	908	finally
    //   533	542	908	finally
    //   579	585	908	finally
    //   605	614	908	finally
    //   656	675	908	finally
    //   691	698	908	finally
    //   735	745	908	finally
    //   772	785	908	finally
    //   801	810	908	finally
    //   840	860	908	finally
    //   888	896	908	finally
    //   631	640	921	finally
    //   631	640	929	java/lang/Throwable
  }
  
  public void flush()
  {
    synchronized (mDiskCacheLock)
    {
      LruDiskCache localLruDiskCache = mDiskLruCache;
      if (localLruDiskCache != null) {}
      try
      {
        mDiskLruCache.flush();
        return;
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          LogUtils.e(localThrowable.getMessage(), localThrowable);
        }
      }
    }
  }
  
  public File getBitmapFileFromDiskCache(String paramString)
  {
    synchronized (mDiskCacheLock)
    {
      if (mDiskLruCache != null)
      {
        paramString = mDiskLruCache.getCacheFile(paramString, 0);
        return paramString;
      }
      return null;
    }
  }
  
  public Bitmap getBitmapFromDiskCache(String paramString, BitmapDisplayConfig paramBitmapDisplayConfig)
  {
    if ((paramString == null) || (!globalConfig.isDiskCacheEnabled())) {
      return null;
    }
    if (mDiskLruCache == null) {
      initDiskCache();
    }
    Object localObject2;
    Object localObject1;
    if (mDiskLruCache != null)
    {
      localObject2 = null;
      localObject1 = null;
    }
    LruDiskCache.Snapshot localSnapshot;
    for (;;)
    {
      try
      {
        localSnapshot = mDiskLruCache.get(paramString);
        if (localSnapshot != null)
        {
          if (paramBitmapDisplayConfig != null)
          {
            localObject1 = localSnapshot;
            localObject2 = localSnapshot;
            if (!paramBitmapDisplayConfig.isShowOriginal()) {}
          }
          else
          {
            localObject1 = localSnapshot;
            localObject2 = localSnapshot;
            localBitmap = BitmapDecoder.decodeFileDescriptor(localSnapshot.getInputStream(0).getFD());
            localObject1 = localSnapshot;
            localObject2 = localSnapshot;
            paramString = addBitmapToMemoryCache(paramString, paramBitmapDisplayConfig, rotateBitmapIfNeeded(paramString, paramBitmapDisplayConfig, localBitmap), mDiskLruCache.getExpiryTimestamp(paramString));
            return paramString;
          }
          localObject1 = localSnapshot;
          localObject2 = localSnapshot;
          Bitmap localBitmap = BitmapDecoder.decodeSampledBitmapFromDescriptor(localSnapshot.getInputStream(0).getFD(), paramBitmapDisplayConfig.getBitmapMaxSize(), paramBitmapDisplayConfig.getBitmapConfig());
          continue;
        }
      }
      catch (Throwable paramString)
      {
        localObject2 = localObject1;
        LogUtils.e(paramString.getMessage(), paramString);
        return null;
      }
      finally
      {
        IOUtils.closeQuietly(localObject2);
      }
    }
  }
  
  public Bitmap getBitmapFromMemCache(String paramString, BitmapDisplayConfig paramBitmapDisplayConfig)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (mMemoryCache != null)
    {
      localObject1 = localObject2;
      if (globalConfig.isMemoryCacheEnabled())
      {
        paramString = new MemoryCacheKey(paramString, paramBitmapDisplayConfig, null);
        localObject1 = (Bitmap)mMemoryCache.get(paramString);
      }
    }
    return localObject1;
  }
  
  public void initDiskCache()
  {
    label158:
    for (;;)
    {
      synchronized (mDiskCacheLock)
      {
        File localFile;
        long l1;
        if ((globalConfig.isDiskCacheEnabled()) && ((mDiskLruCache == null) || (mDiskLruCache.isClosed())))
        {
          localFile = new File(globalConfig.getDiskCachePath());
          if ((localFile.exists()) || (localFile.mkdirs()))
          {
            l1 = OtherUtils.getAvailableSpace(localFile);
            int i = globalConfig.getDiskCacheSize();
            long l2 = i;
            if (l1 <= l2) {
              break label158;
            }
            l1 = l2;
          }
        }
        try
        {
          mDiskLruCache = LruDiskCache.open(localFile, 1, 1, l1);
          mDiskLruCache.setFileNameGenerator(globalConfig.getFileNameGenerator());
          LogUtils.d("create disk cache success");
          return;
        }
        catch (Throwable localThrowable)
        {
          mDiskLruCache = null;
          LogUtils.e("create disk cache error", localThrowable);
        }
      }
    }
  }
  
  public void initMemoryCache()
  {
    if (!globalConfig.isMemoryCacheEnabled()) {
      return;
    }
    if (mMemoryCache != null) {}
    try
    {
      clearMemoryCache();
      mMemoryCache = new LruMemoryCache(globalConfig.getMemoryCacheSize())
      {
        protected int sizeOf(BitmapCache.MemoryCacheKey paramAnonymousMemoryCacheKey, Bitmap paramAnonymousBitmap)
        {
          if (paramAnonymousBitmap == null) {
            return 0;
          }
          return paramAnonymousBitmap.getRowBytes() * paramAnonymousBitmap.getHeight();
        }
      };
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
  }
  
  public void setDiskCacheFileNameGenerator(FileNameGenerator paramFileNameGenerator)
  {
    synchronized (mDiskCacheLock)
    {
      if ((mDiskLruCache != null) && (paramFileNameGenerator != null)) {
        mDiskLruCache.setFileNameGenerator(paramFileNameGenerator);
      }
      return;
    }
  }
  
  public void setDiskCacheSize(int paramInt)
  {
    synchronized (mDiskCacheLock)
    {
      if (mDiskLruCache != null) {
        mDiskLruCache.setMaxSize(paramInt);
      }
      return;
    }
  }
  
  public void setMemoryCacheSize(int paramInt)
  {
    if (mMemoryCache != null) {
      mMemoryCache.setMaxSize(paramInt);
    }
  }
  
  private class BitmapMeta
  {
    public byte[] data;
    public long expiryTimestamp;
    public FileInputStream inputStream;
    
    private BitmapMeta() {}
  }
  
  public class MemoryCacheKey
  {
    private String subKey;
    private String uri;
    
    private MemoryCacheKey(String paramString, BitmapDisplayConfig paramBitmapDisplayConfig)
    {
      uri = paramString;
      if (paramBitmapDisplayConfig == null) {}
      for (this$1 = null;; this$1 = paramBitmapDisplayConfig.toString())
      {
        subKey = BitmapCache.this;
        return;
      }
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        return true;
        if (!(paramObject instanceof MemoryCacheKey)) {
          return false;
        }
        paramObject = (MemoryCacheKey)paramObject;
        if (!uri.equals(uri)) {
          return false;
        }
      } while ((subKey == null) || (subKey == null));
      return subKey.equals(subKey);
    }
    
    public int hashCode()
    {
      return uri.hashCode();
    }
  }
}
