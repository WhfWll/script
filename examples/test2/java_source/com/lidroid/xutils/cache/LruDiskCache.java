package com.lidroid.xutils.cache;

import com.lidroid.xutils.util.IOUtils;
import com.lidroid.xutils.util.LogUtils;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class LruDiskCache
  implements Closeable
{
  static final long ANY_SEQUENCE_NUMBER = -1L;
  private static final char CLEAN = 'C';
  private static final char DELETE = 'D';
  private static final char EXPIRY_PREFIX = 't';
  static final String JOURNAL_FILE = "journal";
  static final String JOURNAL_FILE_BACKUP = "journal.bkp";
  static final String JOURNAL_FILE_TEMP = "journal.tmp";
  static final String MAGIC = "libcore.io.DiskLruCache";
  private static final OutputStream NULL_OUTPUT_STREAM = new OutputStream()
  {
    public void write(int paramAnonymousInt)
      throws IOException
    {}
  };
  private static final char READ = 'R';
  private static final char UPDATE = 'U';
  static final String VERSION = "1";
  private final int appVersion;
  private final Callable<Void> cleanupCallable = new Callable()
  {
    public Void call()
      throws Exception
    {
      synchronized (LruDiskCache.this)
      {
        if (journalWriter == null) {
          return null;
        }
        LruDiskCache.this.trimToSize();
        if (LruDiskCache.this.journalRebuildRequired())
        {
          LruDiskCache.this.rebuildJournal();
          redundantOpCount = 0;
        }
        return null;
      }
    }
  };
  private final File directory;
  final ThreadPoolExecutor executorService = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  private FileNameGenerator fileNameGenerator = new MD5FileNameGenerator();
  private final File journalFile;
  private final File journalFileBackup;
  private final File journalFileTmp;
  private Writer journalWriter;
  private final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap(0, 0.75F, true);
  private long maxSize;
  private long nextSequenceNumber = 0L;
  private int redundantOpCount;
  private long size = 0L;
  private final int valueCount;
  
  private LruDiskCache(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    directory = paramFile;
    appVersion = paramInt1;
    journalFile = new File(paramFile, "journal");
    journalFileTmp = new File(paramFile, "journal.tmp");
    journalFileBackup = new File(paramFile, "journal.bkp");
    valueCount = paramInt2;
    maxSize = paramLong;
  }
  
  private void checkNotClosed()
  {
    if (journalWriter == null) {
      throw new IllegalStateException("cache is closed");
    }
  }
  
  private void completeEdit(Editor paramEditor, boolean paramBoolean)
    throws IOException
  {
    Entry localEntry;
    try
    {
      localEntry = entry;
      if (currentEditor != paramEditor) {
        throw new IllegalStateException();
      }
    }
    finally {}
    int i;
    if ((paramBoolean) && (!readable))
    {
      i = 0;
      if (i >= valueCount) {
        break label407;
      }
    }
    for (;;)
    {
      long l1;
      if (i >= valueCount)
      {
        redundantOpCount += 1;
        currentEditor = null;
        if (!(readable | paramBoolean)) {
          break label358;
        }
        readable = true;
        journalWriter.write("C " + diskKey + " " + 't' + expiryTimestamp + localEntry.getLengths() + '\n');
        if (paramBoolean)
        {
          l1 = nextSequenceNumber;
          nextSequenceNumber = (1L + l1);
          sequenceNumber = l1;
        }
      }
      for (;;)
      {
        journalWriter.flush();
        if ((size > maxSize) || (journalRebuildRequired())) {
          executorService.submit(cleanupCallable);
        }
        for (;;)
        {
          return;
          if (written[i] == 0)
          {
            paramEditor.abort();
            throw new IllegalStateException("Newly created entry didn't create value for index " + i);
          }
          if (localEntry.getDirtyFile(i).exists()) {
            break;
          }
          paramEditor.abort();
        }
        paramEditor = localEntry.getDirtyFile(i);
        if (paramBoolean)
        {
          if (!paramEditor.exists()) {
            break label419;
          }
          File localFile = localEntry.getCleanFile(i);
          paramEditor.renameTo(localFile);
          l1 = lengths[i];
          long l2 = localFile.length();
          lengths[i] = l2;
          size = (size - l1 + l2);
          break label419;
        }
        deleteIfExists(paramEditor);
        break label419;
        label358:
        lruEntries.remove(diskKey);
        journalWriter.write("D " + diskKey + '\n');
      }
      label407:
      i = 0;
      continue;
      i += 1;
      break;
      label419:
      i += 1;
    }
  }
  
  private static void deleteContents(File paramFile)
    throws IOException
  {
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null) {
      throw new IOException("not a readable directory: " + paramFile);
    }
    int j = arrayOfFile.length;
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return;
      }
      paramFile = arrayOfFile[i];
      if (paramFile.isDirectory()) {
        deleteContents(paramFile);
      }
      if ((paramFile.exists()) && (!paramFile.delete())) {
        throw new IOException("failed to delete file: " + paramFile);
      }
      i += 1;
    }
  }
  
  private static void deleteIfExists(File paramFile)
    throws IOException
  {
    if ((paramFile.exists()) && (!paramFile.delete())) {
      throw new IOException();
    }
  }
  
  private Editor editByDiskKey(String paramString, long paramLong)
    throws IOException
  {
    Editor localEditor1 = null;
    for (;;)
    {
      Entry localEntry;
      try
      {
        checkNotClosed();
        localEntry = (Entry)lruEntries.get(paramString);
        if (paramLong != -1L)
        {
          localObject = localEditor1;
          if (localEntry != null)
          {
            long l = sequenceNumber;
            if (l != paramLong) {
              localObject = localEditor1;
            }
          }
          else
          {
            return localObject;
          }
        }
        if (localEntry == null)
        {
          localObject = new Entry(paramString, null);
          lruEntries.put(paramString, localObject);
          localEditor1 = new Editor((Entry)localObject, null);
          currentEditor = localEditor1;
          journalWriter.write("U " + paramString + '\n');
          journalWriter.flush();
          localObject = localEditor1;
          continue;
        }
        localEditor2 = currentEditor;
      }
      finally {}
      Editor localEditor2;
      Object localObject = localEntry;
      if (localEditor2 != null) {
        localObject = localEditor1;
      }
    }
  }
  
  private Snapshot getByDiskKey(String paramString)
    throws IOException
  {
    Object localObject2 = null;
    label235:
    label404:
    for (;;)
    {
      Entry localEntry;
      Object localObject1;
      try
      {
        checkNotClosed();
        localEntry = (Entry)lruEntries.get(paramString);
        if (localEntry == null)
        {
          localObject1 = localObject2;
          return localObject1;
        }
        localObject1 = localObject2;
        if (!readable) {
          continue;
        }
        if (expiryTimestamp >= System.currentTimeMillis()) {
          break label235;
        }
        i = 0;
        if (i >= valueCount)
        {
          redundantOpCount += 1;
          journalWriter.append("D " + paramString + '\n');
          lruEntries.remove(paramString);
          localObject1 = localObject2;
          if (!journalRebuildRequired()) {
            continue;
          }
          executorService.submit(cleanupCallable);
          localObject1 = localObject2;
          continue;
        }
        localObject1 = localEntry.getCleanFile(i);
      }
      finally {}
      if ((((File)localObject1).exists()) && (!((File)localObject1).delete())) {
        throw new IOException("failed to delete " + localObject1);
      }
      size -= lengths[i];
      lengths[i] = 0L;
      i += 1;
      continue;
      FileInputStream[] arrayOfFileInputStream = new FileInputStream[valueCount];
      int i = 0;
      try
      {
        for (;;)
        {
          int j = valueCount;
          if (i >= j)
          {
            redundantOpCount += 1;
            journalWriter.append("R " + paramString + '\n');
            if (journalRebuildRequired()) {
              executorService.submit(cleanupCallable);
            }
            localObject1 = new Snapshot(paramString, sequenceNumber, arrayOfFileInputStream, lengths, null);
            break;
          }
          arrayOfFileInputStream[i] = new FileInputStream(localEntry.getCleanFile(i));
          i += 1;
        }
        localObject1 = localObject2;
      }
      catch (FileNotFoundException paramString)
      {
        i = 0;
      }
      for (;;)
      {
        if (i >= valueCount) {
          break label404;
        }
        localObject1 = localObject2;
        if (arrayOfFileInputStream[i] == null) {
          break;
        }
        IOUtils.closeQuietly(arrayOfFileInputStream[i]);
        i += 1;
      }
    }
  }
  
  private static String inputStreamToString(InputStream paramInputStream)
    throws IOException
  {
    return readFully(new InputStreamReader(paramInputStream, "UTF-8"));
  }
  
  private boolean journalRebuildRequired()
  {
    return (redundantOpCount >= 2000) && (redundantOpCount >= lruEntries.size());
  }
  
  public static LruDiskCache open(File paramFile, int paramInt1, int paramInt2, long paramLong)
    throws IOException
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    if (paramInt2 <= 0) {
      throw new IllegalArgumentException("valueCount <= 0");
    }
    Object localObject = new File(paramFile, "journal.bkp");
    File localFile;
    if (((File)localObject).exists())
    {
      localFile = new File(paramFile, "journal");
      if (!localFile.exists()) {
        break label150;
      }
      ((File)localObject).delete();
    }
    for (;;)
    {
      localObject = new LruDiskCache(paramFile, paramInt1, paramInt2, paramLong);
      if (!journalFile.exists()) {
        break label210;
      }
      try
      {
        ((LruDiskCache)localObject).readJournal();
        ((LruDiskCache)localObject).processJournal();
        journalWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(journalFile, true), "US-ASCII"));
        return localObject;
      }
      catch (Throwable localThrowable)
      {
        label150:
        LogUtils.e("DiskLruCache " + paramFile + " is corrupt: " + localThrowable.getMessage() + ", removing", localThrowable);
        ((LruDiskCache)localObject).delete();
      }
      renameTo((File)localObject, localFile, false);
    }
    label210:
    if ((paramFile.exists()) || (paramFile.mkdirs()))
    {
      localObject = new LruDiskCache(paramFile, paramInt1, paramInt2, paramLong);
      ((LruDiskCache)localObject).rebuildJournal();
    }
    return localObject;
  }
  
  private void processJournal()
    throws IOException
  {
    deleteIfExists(journalFileTmp);
    Iterator localIterator = lruEntries.values().iterator();
    Entry localEntry;
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      localEntry = (Entry)localIterator.next();
      if (currentEditor != null) {
        break;
      }
      i = 0;
      while (i < valueCount)
      {
        size += lengths[i];
        i += 1;
      }
    }
    currentEditor = null;
    int i = 0;
    for (;;)
    {
      if (i >= valueCount)
      {
        localIterator.remove();
        break;
      }
      deleteIfExists(localEntry.getCleanFile(i));
      deleteIfExists(localEntry.getDirtyFile(i));
      i += 1;
    }
  }
  
  private static String readFully(Reader paramReader)
    throws IOException
  {
    Object localObject2 = null;
    try
    {
      localObject1 = new StringWriter();
      try
      {
        localObject2 = new char['Ѐ'];
        for (;;)
        {
          int i = paramReader.read((char[])localObject2);
          if (i == -1)
          {
            localObject2 = ((StringWriter)localObject1).toString();
            IOUtils.closeQuietly(paramReader);
            IOUtils.closeQuietly((Closeable)localObject1);
            return localObject2;
          }
          ((StringWriter)localObject1).write((char[])localObject2, 0, i);
        }
        IOUtils.closeQuietly(paramReader);
      }
      finally {}
    }
    finally
    {
      Object localObject1 = localObject3;
      Object localObject4 = localObject5;
    }
    IOUtils.closeQuietly((Closeable)localObject1);
    throw localObject3;
  }
  
  /* Error */
  private void readJournal()
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 24	com/lidroid/xutils/cache/LruDiskCache$StrictLineReader
    //   5: dup
    //   6: aload_0
    //   7: new 375	java/io/FileInputStream
    //   10: dup
    //   11: aload_0
    //   12: getfield 145	com/lidroid/xutils/cache/LruDiskCache:journalFile	Ljava/io/File;
    //   15: invokespecial 382	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   18: invokespecial 500	com/lidroid/xutils/cache/LruDiskCache$StrictLineReader:<init>	(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/io/InputStream;)V
    //   21: astore_2
    //   22: aload_2
    //   23: invokevirtual 503	com/lidroid/xutils/cache/LruDiskCache$StrictLineReader:readLine	()Ljava/lang/String;
    //   26: astore_3
    //   27: aload_2
    //   28: invokevirtual 503	com/lidroid/xutils/cache/LruDiskCache$StrictLineReader:readLine	()Ljava/lang/String;
    //   31: astore 4
    //   33: aload_2
    //   34: invokevirtual 503	com/lidroid/xutils/cache/LruDiskCache$StrictLineReader:readLine	()Ljava/lang/String;
    //   37: astore 5
    //   39: aload_2
    //   40: invokevirtual 503	com/lidroid/xutils/cache/LruDiskCache$StrictLineReader:readLine	()Ljava/lang/String;
    //   43: astore 6
    //   45: aload_2
    //   46: invokevirtual 503	com/lidroid/xutils/cache/LruDiskCache$StrictLineReader:readLine	()Ljava/lang/String;
    //   49: astore 7
    //   51: ldc 51
    //   53: aload_3
    //   54: invokevirtual 509	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   57: ifeq +54 -> 111
    //   60: ldc 60
    //   62: aload 4
    //   64: invokevirtual 509	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   67: ifeq +44 -> 111
    //   70: aload_0
    //   71: getfield 138	com/lidroid/xutils/cache/LruDiskCache:appVersion	I
    //   74: invokestatic 514	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   77: aload 5
    //   79: invokevirtual 509	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   82: ifeq +29 -> 111
    //   85: aload_0
    //   86: getfield 151	com/lidroid/xutils/cache/LruDiskCache:valueCount	I
    //   89: invokestatic 514	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   92: aload 6
    //   94: invokevirtual 509	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   97: ifeq +14 -> 111
    //   100: ldc_w 516
    //   103: aload 7
    //   105: invokevirtual 509	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   108: ifne +74 -> 182
    //   111: new 160	java/io/IOException
    //   114: dup
    //   115: new 233	java/lang/StringBuilder
    //   118: dup
    //   119: ldc_w 518
    //   122: invokespecial 236	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   125: aload_3
    //   126: invokevirtual 243	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: ldc_w 520
    //   132: invokevirtual 243	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: aload 4
    //   137: invokevirtual 243	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: ldc_w 520
    //   143: invokevirtual 243	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: aload 6
    //   148: invokevirtual 243	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: ldc_w 520
    //   154: invokevirtual 243	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: aload 7
    //   159: invokevirtual 243	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: ldc_w 522
    //   165: invokevirtual 243	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: invokevirtual 261	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   171: invokespecial 329	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   174: athrow
    //   175: astore_3
    //   176: aload_2
    //   177: invokestatic 388	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   180: aload_3
    //   181: athrow
    //   182: iconst_0
    //   183: istore_1
    //   184: aload_0
    //   185: aload_2
    //   186: invokevirtual 503	com/lidroid/xutils/cache/LruDiskCache$StrictLineReader:readLine	()Ljava/lang/String;
    //   189: invokespecial 525	com/lidroid/xutils/cache/LruDiskCache:readJournalLine	(Ljava/lang/String;)V
    //   192: iload_1
    //   193: iconst_1
    //   194: iadd
    //   195: istore_1
    //   196: goto -12 -> 184
    //   199: astore_3
    //   200: aload_0
    //   201: iload_1
    //   202: aload_0
    //   203: getfield 104	com/lidroid/xutils/cache/LruDiskCache:lruEntries	Ljava/util/LinkedHashMap;
    //   206: invokevirtual 402	java/util/LinkedHashMap:size	()I
    //   209: isub
    //   210: putfield 190	com/lidroid/xutils/cache/LruDiskCache:redundantOpCount	I
    //   213: aload_2
    //   214: invokestatic 388	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   217: return
    //   218: astore 4
    //   220: aload_3
    //   221: astore_2
    //   222: aload 4
    //   224: astore_3
    //   225: goto -49 -> 176
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	228	0	this	LruDiskCache
    //   183	27	1	i	int
    //   21	201	2	localObject1	Object
    //   1	125	3	str1	String
    //   175	6	3	localObject2	Object
    //   199	22	3	localEOFException	EOFException
    //   224	1	3	localObject3	Object
    //   31	105	4	str2	String
    //   218	5	4	localObject4	Object
    //   37	41	5	str3	String
    //   43	104	6	str4	String
    //   49	109	7	str5	String
    // Exception table:
    //   from	to	target	type
    //   22	111	175	finally
    //   111	175	175	finally
    //   184	192	175	finally
    //   200	213	175	finally
    //   184	192	199	java/io/EOFException
    //   2	22	218	finally
  }
  
  private void readJournalLine(String paramString)
    throws IOException
  {
    int j = paramString.indexOf(' ');
    int i;
    int k;
    Object localObject2;
    Object localObject1;
    if (j == 1)
    {
      i = paramString.charAt(0);
      j += 1;
      k = paramString.indexOf(' ', j);
      if (k != -1) {
        break label90;
      }
      localObject2 = paramString.substring(j);
      localObject1 = localObject2;
      if (i != 68) {
        break label99;
      }
      lruEntries.remove(localObject2);
    }
    label90:
    label99:
    do
    {
      return;
      throw new IOException("unexpected journal line: " + paramString);
      localObject1 = paramString.substring(j, k);
      Entry localEntry = (Entry)lruEntries.get(localObject1);
      localObject2 = localEntry;
      if (localEntry == null)
      {
        localObject2 = new Entry((String)localObject1, null);
        lruEntries.put(localObject1, localObject2);
      }
      switch (i)
      {
      case 82: 
      default: 
        throw new IOException("unexpected journal line: " + paramString);
      case 67: 
        readable = true;
        currentEditor = null;
        localObject1 = paramString.substring(k + 1).split(" ");
      }
    } while (localObject1.length <= 0);
    try
    {
      if (localObject1[0].charAt(0) == 't')
      {
        expiryTimestamp = Long.valueOf(localObject1[0].substring(1)).longValue();
        ((Entry)localObject2).setLengths((String[])localObject1, 1);
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      throw new IOException("unexpected journal line: " + paramString);
    }
    expiryTimestamp = Long.MAX_VALUE;
    ((Entry)localObject2).setLengths(localThrowable, 0);
    return;
    currentEditor = new Editor((Entry)localObject2, null);
  }
  
  /* Error */
  private void rebuildJournal()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 157	com/lidroid/xutils/cache/LruDiskCache:journalWriter	Ljava/io/Writer;
    //   6: ifnull +10 -> 16
    //   9: aload_0
    //   10: getfield 157	com/lidroid/xutils/cache/LruDiskCache:journalWriter	Ljava/io/Writer;
    //   13: invokestatic 388	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   16: aconst_null
    //   17: astore_3
    //   18: new 423	java/io/BufferedWriter
    //   21: dup
    //   22: new 425	java/io/OutputStreamWriter
    //   25: dup
    //   26: new 427	java/io/FileOutputStream
    //   29: dup
    //   30: aload_0
    //   31: getfield 147	com/lidroid/xutils/cache/LruDiskCache:journalFileTmp	Ljava/io/File;
    //   34: invokespecial 565	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   37: ldc_w 432
    //   40: invokespecial 435	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   43: invokespecial 438	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   46: astore_2
    //   47: aload_2
    //   48: ldc 51
    //   50: invokevirtual 266	java/io/Writer:write	(Ljava/lang/String;)V
    //   53: aload_2
    //   54: ldc_w 567
    //   57: invokevirtual 266	java/io/Writer:write	(Ljava/lang/String;)V
    //   60: aload_2
    //   61: ldc 60
    //   63: invokevirtual 266	java/io/Writer:write	(Ljava/lang/String;)V
    //   66: aload_2
    //   67: ldc_w 567
    //   70: invokevirtual 266	java/io/Writer:write	(Ljava/lang/String;)V
    //   73: aload_2
    //   74: aload_0
    //   75: getfield 138	com/lidroid/xutils/cache/LruDiskCache:appVersion	I
    //   78: invokestatic 514	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   81: invokevirtual 266	java/io/Writer:write	(Ljava/lang/String;)V
    //   84: aload_2
    //   85: ldc_w 567
    //   88: invokevirtual 266	java/io/Writer:write	(Ljava/lang/String;)V
    //   91: aload_2
    //   92: aload_0
    //   93: getfield 151	com/lidroid/xutils/cache/LruDiskCache:valueCount	I
    //   96: invokestatic 514	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   99: invokevirtual 266	java/io/Writer:write	(Ljava/lang/String;)V
    //   102: aload_2
    //   103: ldc_w 567
    //   106: invokevirtual 266	java/io/Writer:write	(Ljava/lang/String;)V
    //   109: aload_2
    //   110: ldc_w 567
    //   113: invokevirtual 266	java/io/Writer:write	(Ljava/lang/String;)V
    //   116: aload_0
    //   117: getfield 104	com/lidroid/xutils/cache/LruDiskCache:lruEntries	Ljava/util/LinkedHashMap;
    //   120: invokevirtual 465	java/util/LinkedHashMap:values	()Ljava/util/Collection;
    //   123: invokeinterface 471 1 0
    //   128: astore_3
    //   129: aload_3
    //   130: invokeinterface 476 1 0
    //   135: istore_1
    //   136: iload_1
    //   137: ifne +85 -> 222
    //   140: aload_2
    //   141: invokestatic 388	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   144: aload_0
    //   145: getfield 145	com/lidroid/xutils/cache/LruDiskCache:journalFile	Ljava/io/File;
    //   148: invokevirtual 294	java/io/File:exists	()Z
    //   151: ifeq +15 -> 166
    //   154: aload_0
    //   155: getfield 145	com/lidroid/xutils/cache/LruDiskCache:journalFile	Ljava/io/File;
    //   158: aload_0
    //   159: getfield 149	com/lidroid/xutils/cache/LruDiskCache:journalFileBackup	Ljava/io/File;
    //   162: iconst_1
    //   163: invokestatic 441	com/lidroid/xutils/cache/LruDiskCache:renameTo	(Ljava/io/File;Ljava/io/File;Z)V
    //   166: aload_0
    //   167: getfield 147	com/lidroid/xutils/cache/LruDiskCache:journalFileTmp	Ljava/io/File;
    //   170: aload_0
    //   171: getfield 145	com/lidroid/xutils/cache/LruDiskCache:journalFile	Ljava/io/File;
    //   174: iconst_0
    //   175: invokestatic 441	com/lidroid/xutils/cache/LruDiskCache:renameTo	(Ljava/io/File;Ljava/io/File;Z)V
    //   178: aload_0
    //   179: getfield 149	com/lidroid/xutils/cache/LruDiskCache:journalFileBackup	Ljava/io/File;
    //   182: invokevirtual 337	java/io/File:delete	()Z
    //   185: pop
    //   186: aload_0
    //   187: new 423	java/io/BufferedWriter
    //   190: dup
    //   191: new 425	java/io/OutputStreamWriter
    //   194: dup
    //   195: new 427	java/io/FileOutputStream
    //   198: dup
    //   199: aload_0
    //   200: getfield 145	com/lidroid/xutils/cache/LruDiskCache:journalFile	Ljava/io/File;
    //   203: iconst_1
    //   204: invokespecial 430	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   207: ldc_w 432
    //   210: invokespecial 435	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   213: invokespecial 438	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   216: putfield 157	com/lidroid/xutils/cache/LruDiskCache:journalWriter	Ljava/io/Writer;
    //   219: aload_0
    //   220: monitorexit
    //   221: return
    //   222: aload_3
    //   223: invokeinterface 480 1 0
    //   228: checkcast 18	com/lidroid/xutils/cache/LruDiskCache$Entry
    //   231: astore 4
    //   233: aload 4
    //   235: invokestatic 221	com/lidroid/xutils/cache/LruDiskCache$Entry:access$2	(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    //   238: ifnull +48 -> 286
    //   241: aload_2
    //   242: new 233	java/lang/StringBuilder
    //   245: dup
    //   246: ldc_w 359
    //   249: invokespecial 236	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   252: aload 4
    //   254: invokestatic 239	com/lidroid/xutils/cache/LruDiskCache$Entry:access$3	(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;
    //   257: invokevirtual 243	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   260: bipush 10
    //   262: invokevirtual 248	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   265: invokevirtual 261	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   268: invokevirtual 266	java/io/Writer:write	(Ljava/lang/String;)V
    //   271: goto -142 -> 129
    //   274: astore_3
    //   275: aload_2
    //   276: invokestatic 388	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   279: aload_3
    //   280: athrow
    //   281: astore_2
    //   282: aload_0
    //   283: monitorexit
    //   284: aload_2
    //   285: athrow
    //   286: aload_2
    //   287: new 233	java/lang/StringBuilder
    //   290: dup
    //   291: ldc -21
    //   293: invokespecial 236	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   296: aload 4
    //   298: invokestatic 239	com/lidroid/xutils/cache/LruDiskCache$Entry:access$3	(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;
    //   301: invokevirtual 243	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   304: ldc -11
    //   306: invokevirtual 243	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   309: bipush 116
    //   311: invokevirtual 248	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   314: aload 4
    //   316: invokestatic 251	com/lidroid/xutils/cache/LruDiskCache$Entry:access$9	(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J
    //   319: invokevirtual 254	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   322: aload 4
    //   324: invokevirtual 258	com/lidroid/xutils/cache/LruDiskCache$Entry:getLengths	()Ljava/lang/String;
    //   327: invokevirtual 243	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   330: bipush 10
    //   332: invokevirtual 248	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   335: invokevirtual 261	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   338: invokevirtual 266	java/io/Writer:write	(Ljava/lang/String;)V
    //   341: goto -212 -> 129
    //   344: astore 4
    //   346: aload_3
    //   347: astore_2
    //   348: aload 4
    //   350: astore_3
    //   351: goto -76 -> 275
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	354	0	this	LruDiskCache
    //   135	2	1	bool	boolean
    //   46	230	2	localBufferedWriter	BufferedWriter
    //   281	6	2	localObject1	Object
    //   347	1	2	localObject2	Object
    //   17	206	3	localIterator	Iterator
    //   274	73	3	localObject3	Object
    //   350	1	3	localObject4	Object
    //   231	92	4	localEntry	Entry
    //   344	5	4	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   47	129	274	finally
    //   129	136	274	finally
    //   222	271	274	finally
    //   286	341	274	finally
    //   2	16	281	finally
    //   140	166	281	finally
    //   166	219	281	finally
    //   275	281	281	finally
    //   18	47	344	finally
  }
  
  private boolean removeByDiskKey(String paramString)
    throws IOException
  {
    for (;;)
    {
      Entry localEntry;
      int i;
      try
      {
        checkNotClosed();
        localEntry = (Entry)lruEntries.get(paramString);
        if (localEntry != null)
        {
          localObject = currentEditor;
          if (localObject == null) {}
        }
        else
        {
          bool = false;
          return bool;
        }
        i = 0;
        if (i >= valueCount)
        {
          redundantOpCount += 1;
          journalWriter.append("D " + paramString + '\n');
          lruEntries.remove(paramString);
          if (!journalRebuildRequired()) {
            break label209;
          }
          executorService.submit(cleanupCallable);
          break label209;
        }
        Object localObject = localEntry.getCleanFile(i);
        if ((((File)localObject).exists()) && (!((File)localObject).delete())) {
          throw new IOException("failed to delete " + localObject);
        }
      }
      finally {}
      size -= lengths[i];
      lengths[i] = 0L;
      i += 1;
      continue;
      label209:
      boolean bool = true;
    }
  }
  
  private static void renameTo(File paramFile1, File paramFile2, boolean paramBoolean)
    throws IOException
  {
    if (paramBoolean) {
      deleteIfExists(paramFile2);
    }
    if (!paramFile1.renameTo(paramFile2)) {
      throw new IOException();
    }
  }
  
  private void trimToSize()
    throws IOException
  {
    for (;;)
    {
      if (size <= maxSize) {
        return;
      }
      removeByDiskKey((String)((Map.Entry)lruEntries.entrySet().iterator().next()).getKey());
    }
  }
  
  public void close()
    throws IOException
  {
    for (;;)
    {
      try
      {
        Object localObject1 = journalWriter;
        if (localObject1 == null) {
          return;
        }
        localObject1 = new ArrayList(lruEntries.values()).iterator();
        if (!((Iterator)localObject1).hasNext())
        {
          trimToSize();
          journalWriter.close();
          journalWriter = null;
          continue;
        }
        localEntry = (Entry)localObject2.next();
      }
      finally {}
      Entry localEntry;
      if (currentEditor != null) {
        currentEditor.abort();
      }
    }
  }
  
  public void delete()
    throws IOException
  {
    IOUtils.closeQuietly(this);
    deleteContents(directory);
  }
  
  public Editor edit(String paramString)
    throws IOException
  {
    return editByDiskKey(fileNameGenerator.generate(paramString), -1L);
  }
  
  public void flush()
    throws IOException
  {
    try
    {
      checkNotClosed();
      trimToSize();
      journalWriter.flush();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public Snapshot get(String paramString)
    throws IOException
  {
    return getByDiskKey(fileNameGenerator.generate(paramString));
  }
  
  public File getCacheFile(String paramString, int paramInt)
  {
    Object localObject = fileNameGenerator.generate(paramString);
    localObject = new File(directory, localObject + "." + paramInt);
    if (((File)localObject).exists()) {
      return localObject;
    }
    try
    {
      remove(paramString);
      return null;
    }
    catch (IOException paramString)
    {
      for (;;) {}
    }
  }
  
  public File getDirectory()
  {
    return directory;
  }
  
  /* Error */
  public long getExpiryTimestamp(String paramString)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 134	com/lidroid/xutils/cache/LruDiskCache:fileNameGenerator	Lcom/lidroid/xutils/cache/FileNameGenerator;
    //   6: aload_1
    //   7: invokeinterface 596 2 0
    //   12: astore_1
    //   13: aload_0
    //   14: invokespecial 342	com/lidroid/xutils/cache/LruDiskCache:checkNotClosed	()V
    //   17: aload_0
    //   18: getfield 104	com/lidroid/xutils/cache/LruDiskCache:lruEntries	Ljava/util/LinkedHashMap;
    //   21: aload_1
    //   22: invokevirtual 345	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   25: checkcast 18	com/lidroid/xutils/cache/LruDiskCache$Entry
    //   28: astore_1
    //   29: aload_1
    //   30: ifnonnull +9 -> 39
    //   33: lconst_0
    //   34: lstore_2
    //   35: aload_0
    //   36: monitorexit
    //   37: lload_2
    //   38: lreturn
    //   39: aload_1
    //   40: invokestatic 251	com/lidroid/xutils/cache/LruDiskCache$Entry:access$9	(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J
    //   43: lstore_2
    //   44: goto -9 -> 35
    //   47: astore_1
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_1
    //   51: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	this	LruDiskCache
    //   0	52	1	paramString	String
    //   34	10	2	l	long
    // Exception table:
    //   from	to	target	type
    //   2	29	47	finally
    //   39	44	47	finally
  }
  
  public FileNameGenerator getFileNameGenerator()
  {
    return fileNameGenerator;
  }
  
  public long getMaxSize()
  {
    try
    {
      long l = maxSize;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  public boolean isClosed()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 157	com/lidroid/xutils/cache/LruDiskCache:journalWriter	Ljava/io/Writer;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnonnull +9 -> 17
    //   11: iconst_1
    //   12: istore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_1
    //   16: ireturn
    //   17: iconst_0
    //   18: istore_1
    //   19: goto -6 -> 13
    //   22: astore_2
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_2
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	27	0	this	LruDiskCache
    //   12	7	1	bool	boolean
    //   6	2	2	localWriter	Writer
    //   22	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	22	finally
  }
  
  public boolean remove(String paramString)
    throws IOException
  {
    return removeByDiskKey(fileNameGenerator.generate(paramString));
  }
  
  public void setFileNameGenerator(FileNameGenerator paramFileNameGenerator)
  {
    if (paramFileNameGenerator != null) {
      fileNameGenerator = paramFileNameGenerator;
    }
  }
  
  public void setMaxSize(long paramLong)
  {
    try
    {
      maxSize = paramLong;
      executorService.submit(cleanupCallable);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public long size()
  {
    try
    {
      long l = size;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final class Editor
  {
    private boolean committed;
    private final LruDiskCache.Entry entry;
    private boolean hasErrors;
    private final boolean[] written;
    
    private Editor(LruDiskCache.Entry paramEntry)
    {
      entry = paramEntry;
      if (LruDiskCache.Entry.access$0(paramEntry)) {}
      for (this$1 = null;; this$1 = new boolean[valueCount])
      {
        written = LruDiskCache.this;
        return;
      }
    }
    
    public void abort()
      throws IOException
    {
      LruDiskCache.this.completeEdit(this, false);
    }
    
    public void abortUnlessCommitted()
    {
      if (!committed) {}
      try
      {
        abort();
        return;
      }
      catch (Throwable localThrowable) {}
    }
    
    public void commit()
      throws IOException
    {
      if (hasErrors)
      {
        LruDiskCache.this.completeEdit(this, false);
        LruDiskCache.this.removeByDiskKey(LruDiskCache.Entry.access$3(entry));
      }
      for (;;)
      {
        committed = true;
        return;
        LruDiskCache.this.completeEdit(this, true);
      }
    }
    
    public String getString(int paramInt)
      throws IOException
    {
      InputStream localInputStream = newInputStream(paramInt);
      if (localInputStream != null) {
        return LruDiskCache.inputStreamToString(localInputStream);
      }
      return null;
    }
    
    public InputStream newInputStream(int paramInt)
      throws IOException
    {
      synchronized (LruDiskCache.this)
      {
        if (LruDiskCache.Entry.access$2(entry) != this) {
          throw new IllegalStateException();
        }
      }
      if (!LruDiskCache.Entry.access$0(entry)) {
        return null;
      }
      try
      {
        FileInputStream localFileInputStream = new FileInputStream(entry.getCleanFile(paramInt));
        return localFileInputStream;
      }
      catch (FileNotFoundException localFileNotFoundException) {}
      return null;
    }
    
    public OutputStream newOutputStream(int paramInt)
      throws IOException
    {
      synchronized (LruDiskCache.this)
      {
        if (LruDiskCache.Entry.access$2(entry) != this) {
          throw new IllegalStateException();
        }
      }
      if (!LruDiskCache.Entry.access$0(entry)) {
        written[paramInt] = true;
      }
      File localFile = entry.getDirtyFile(paramInt);
      try
      {
        Object localObject2 = new FileOutputStream(localFile);
        localObject2 = new FaultHidingOutputStream((OutputStream)localObject2, null);
        return localObject2;
      }
      catch (FileNotFoundException localFileNotFoundException1)
      {
        for (;;)
        {
          directory.mkdirs();
          try
          {
            FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
          }
          catch (FileNotFoundException localFileNotFoundException2)
          {
            OutputStream localOutputStream = LruDiskCache.NULL_OUTPUT_STREAM;
            return localOutputStream;
          }
        }
      }
    }
    
    public void set(int paramInt, String paramString)
      throws IOException
    {
      Object localObject3 = null;
      try
      {
        OutputStreamWriter localOutputStreamWriter = new OutputStreamWriter(newOutputStream(paramInt), "UTF-8");
        IOUtils.closeQuietly(paramString);
      }
      finally
      {
        try
        {
          localOutputStreamWriter.write(paramString);
          IOUtils.closeQuietly(localOutputStreamWriter);
          return;
        }
        finally
        {
          paramString = localObject1;
          Object localObject2 = localObject4;
        }
        localObject1 = finally;
        paramString = localObject3;
      }
      throw localObject1;
    }
    
    public void setEntryExpiryTimestamp(long paramLong)
    {
      LruDiskCache.Entry.access$1(entry, paramLong);
    }
    
    private class FaultHidingOutputStream
      extends FilterOutputStream
    {
      private FaultHidingOutputStream(OutputStream paramOutputStream)
      {
        super();
      }
      
      public void close()
      {
        try
        {
          out.close();
          return;
        }
        catch (Throwable localThrowable)
        {
          hasErrors = true;
        }
      }
      
      public void flush()
      {
        try
        {
          out.flush();
          return;
        }
        catch (Throwable localThrowable)
        {
          hasErrors = true;
        }
      }
      
      public void write(int paramInt)
      {
        try
        {
          out.write(paramInt);
          return;
        }
        catch (Throwable localThrowable)
        {
          hasErrors = true;
        }
      }
      
      public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      {
        try
        {
          out.write(paramArrayOfByte, paramInt1, paramInt2);
          out.flush();
          return;
        }
        catch (Throwable paramArrayOfByte)
        {
          hasErrors = true;
        }
      }
    }
  }
  
  private final class Entry
  {
    private LruDiskCache.Editor currentEditor;
    private final String diskKey;
    private long expiryTimestamp = Long.MAX_VALUE;
    private final long[] lengths;
    private boolean readable;
    private long sequenceNumber;
    
    private Entry(String paramString)
    {
      diskKey = paramString;
      lengths = new long[valueCount];
    }
    
    private IOException invalidLengths(String[] paramArrayOfString)
      throws IOException
    {
      throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
    }
    
    /* Error */
    private void setLengths(String[] paramArrayOfString, int paramInt)
      throws IOException
    {
      // Byte code:
      //   0: aload_1
      //   1: arraylength
      //   2: iload_2
      //   3: isub
      //   4: aload_0
      //   5: getfield 24	com/lidroid/xutils/cache/LruDiskCache$Entry:this$0	Lcom/lidroid/xutils/cache/LruDiskCache;
      //   8: invokestatic 37	com/lidroid/xutils/cache/LruDiskCache:access$7	(Lcom/lidroid/xutils/cache/LruDiskCache;)I
      //   11: if_icmpeq +9 -> 20
      //   14: aload_0
      //   15: aload_1
      //   16: invokespecial 102	com/lidroid/xutils/cache/LruDiskCache$Entry:invalidLengths	([Ljava/lang/String;)Ljava/io/IOException;
      //   19: athrow
      //   20: iconst_0
      //   21: istore_3
      //   22: iload_3
      //   23: aload_0
      //   24: getfield 24	com/lidroid/xutils/cache/LruDiskCache$Entry:this$0	Lcom/lidroid/xutils/cache/LruDiskCache;
      //   27: invokestatic 37	com/lidroid/xutils/cache/LruDiskCache:access$7	(Lcom/lidroid/xutils/cache/LruDiskCache;)I
      //   30: if_icmplt +4 -> 34
      //   33: return
      //   34: aload_0
      //   35: getfield 39	com/lidroid/xutils/cache/LruDiskCache$Entry:lengths	[J
      //   38: iload_3
      //   39: aload_1
      //   40: iload_3
      //   41: iload_2
      //   42: iadd
      //   43: aaload
      //   44: invokestatic 108	java/lang/Long:parseLong	(Ljava/lang/String;)J
      //   47: lastore
      //   48: iload_3
      //   49: iconst_1
      //   50: iadd
      //   51: istore_3
      //   52: goto -30 -> 22
      //   55: astore 4
      //   57: aload_0
      //   58: aload_1
      //   59: invokespecial 102	com/lidroid/xutils/cache/LruDiskCache$Entry:invalidLengths	([Ljava/lang/String;)Ljava/io/IOException;
      //   62: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	63	0	this	Entry
      //   0	63	1	paramArrayOfString	String[]
      //   0	63	2	paramInt	int
      //   21	31	3	i	int
      //   55	1	4	localNumberFormatException	NumberFormatException
      // Exception table:
      //   from	to	target	type
      //   22	33	55	java/lang/NumberFormatException
      //   34	48	55	java/lang/NumberFormatException
    }
    
    public File getCleanFile(int paramInt)
    {
      return new File(directory, diskKey + "." + paramInt);
    }
    
    public File getDirtyFile(int paramInt)
    {
      return new File(directory, diskKey + "." + paramInt + ".tmp");
    }
    
    public String getLengths()
      throws IOException
    {
      StringBuilder localStringBuilder = new StringBuilder();
      long[] arrayOfLong = lengths;
      int j = arrayOfLong.length;
      int i = 0;
      for (;;)
      {
        if (i >= j) {
          return localStringBuilder.toString();
        }
        long l = arrayOfLong[i];
        localStringBuilder.append(" ").append(l);
        i += 1;
      }
    }
  }
  
  public final class Snapshot
    implements Closeable
  {
    private final String diskKey;
    private final FileInputStream[] ins;
    private final long[] lengths;
    private final long sequenceNumber;
    
    private Snapshot(String paramString, long paramLong, FileInputStream[] paramArrayOfFileInputStream, long[] paramArrayOfLong)
    {
      diskKey = paramString;
      sequenceNumber = paramLong;
      ins = paramArrayOfFileInputStream;
      lengths = paramArrayOfLong;
    }
    
    public void close()
    {
      FileInputStream[] arrayOfFileInputStream = ins;
      int j = arrayOfFileInputStream.length;
      int i = 0;
      for (;;)
      {
        if (i >= j) {
          return;
        }
        IOUtils.closeQuietly(arrayOfFileInputStream[i]);
        i += 1;
      }
    }
    
    public LruDiskCache.Editor edit()
      throws IOException
    {
      return LruDiskCache.this.editByDiskKey(diskKey, sequenceNumber);
    }
    
    public FileInputStream getInputStream(int paramInt)
    {
      return ins[paramInt];
    }
    
    public long getLength(int paramInt)
    {
      return lengths[paramInt];
    }
    
    public String getString(int paramInt)
      throws IOException
    {
      return LruDiskCache.inputStreamToString(getInputStream(paramInt));
    }
  }
  
  private class StrictLineReader
    implements Closeable
  {
    private static final byte CR = 13;
    private static final byte LF = 10;
    private byte[] buf;
    private final Charset charset = Charset.forName("US-ASCII");
    private int end;
    private final InputStream in;
    private int pos;
    
    public StrictLineReader(InputStream paramInputStream)
    {
      this(paramInputStream, 8192);
    }
    
    public StrictLineReader(InputStream paramInputStream, int paramInt)
    {
      if (paramInputStream == null) {
        throw new NullPointerException();
      }
      if (paramInt < 0) {
        throw new IllegalArgumentException("capacity <= 0");
      }
      in = paramInputStream;
      buf = new byte[paramInt];
    }
    
    private void fillBuf()
      throws IOException
    {
      int i = in.read(buf, 0, buf.length);
      if (i == -1) {
        throw new EOFException();
      }
      pos = 0;
      end = i;
    }
    
    public void close()
      throws IOException
    {
      synchronized (in)
      {
        if (buf != null)
        {
          buf = null;
          in.close();
        }
        return;
      }
    }
    
    public String readLine()
      throws IOException
    {
      synchronized (in)
      {
        if (buf == null) {
          throw new IOException("LineReader is closed");
        }
      }
      if (pos >= end) {
        fillBuf();
      }
      int i = pos;
      Object localObject2;
      if (i == end) {
        localObject2 = new ByteArrayOutputStream(end - pos + 80)
        {
          public String toString()
          {
            if ((count > 0) && (buf[(count - 1)] == 13)) {}
            for (int i = count - 1;; i = count) {
              try
              {
                String str = new String(buf, 0, i, charset.name());
                return str;
              }
              catch (UnsupportedEncodingException localUnsupportedEncodingException)
              {
                throw new AssertionError(localUnsupportedEncodingException);
              }
            }
          }
        };
      }
      label282:
      for (;;)
      {
        ((ByteArrayOutputStream)localObject2).write(buf, pos, end - pos);
        end = -1;
        fillBuf();
        i = pos;
        for (;;)
        {
          if (i == end) {
            break label282;
          }
          if (buf[i] == 10)
          {
            if (i != pos) {
              ((ByteArrayOutputStream)localObject2).write(buf, pos, i - pos);
            }
            ((ByteArrayOutputStream)localObject2).flush();
            pos = (i + 1);
            localObject2 = ((ByteArrayOutputStream)localObject2).toString();
            return localObject2;
            if (buf[i] == 10)
            {
              if ((i != pos) && (buf[(i - 1)] == 13)) {}
              for (int j = i - 1;; j = i)
              {
                localObject2 = new String(buf, pos, j - pos, charset.name());
                pos = (i + 1);
                return localObject2;
              }
            }
            i += 1;
            break;
          }
          i += 1;
        }
      }
    }
  }
}
