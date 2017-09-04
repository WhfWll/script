package net.sqlcipher.database;

import android.database.DataSetObserver;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import net.sqlcipher.AbstractWindowedCursor;
import net.sqlcipher.SQLException;

public class SQLiteCursor
  extends AbstractWindowedCursor
{
  static final int NO_COUNT = -1;
  static final String TAG = "Cursor";
  private Map<String, Integer> mColumnNameMap;
  private String[] mColumns;
  private int mCount = -1;
  private int mCursorState = 0;
  private SQLiteDatabase mDatabase;
  private SQLiteCursorDriver mDriver;
  private String mEditTable;
  private int mInitialRead = Integer.MAX_VALUE;
  private ReentrantLock mLock = null;
  private int mMaxRead = Integer.MAX_VALUE;
  protected MainThreadNotificationHandler mNotificationHandler;
  private boolean mPendingData = false;
  private SQLiteQuery mQuery;
  private Throwable mStackTrace = new DatabaseObjectNotClosedException().fillInStackTrace();
  
  public SQLiteCursor(SQLiteDatabase paramSQLiteDatabase, SQLiteCursorDriver paramSQLiteCursorDriver, String paramString, SQLiteQuery paramSQLiteQuery)
  {
    mDatabase = paramSQLiteDatabase;
    mDriver = paramSQLiteCursorDriver;
    mEditTable = paramString;
    mColumnNameMap = null;
    mQuery = paramSQLiteQuery;
    try
    {
      paramSQLiteDatabase.lock();
      int j = mQuery.columnCountLocked();
      mColumns = new String[j];
      int i = 0;
      while (i < j)
      {
        paramSQLiteCursorDriver = mQuery.columnNameLocked(i);
        mColumns[i] = paramSQLiteCursorDriver;
        if ("_id".equals(paramSQLiteCursorDriver)) {
          mRowIdColumnIndex = i;
        }
        i += 1;
      }
    }
    finally
    {
      paramSQLiteDatabase.unlock();
    }
  }
  
  private void deactivateCommon()
  {
    mCursorState = 0;
    if (mWindow != null)
    {
      mWindow.close();
      mWindow = null;
    }
  }
  
  private void fillWindow(int paramInt)
  {
    if (mWindow == null) {
      mWindow = new net.sqlcipher.CursorWindow(true);
    }
    for (;;)
    {
      mWindow.setStartPosition(paramInt);
      mCount = mQuery.fillWindow(mWindow, mInitialRead, 0);
      if (mCount == -1)
      {
        mCount = (mInitialRead + paramInt);
        new Thread(new QueryThread(mCursorState), "query thread").start();
      }
      return;
      mCursorState += 1;
      queryThreadLock();
      try
      {
        mWindow.clear();
        queryThreadUnlock();
      }
      finally
      {
        queryThreadUnlock();
      }
    }
  }
  
  private void queryThreadLock()
  {
    if (mLock != null) {
      mLock.lock();
    }
  }
  
  private void queryThreadUnlock()
  {
    if (mLock != null) {
      mLock.unlock();
    }
  }
  
  public void close()
  {
    super.close();
    deactivateCommon();
    mQuery.close();
    mDriver.cursorClosed();
  }
  
  public boolean commitUpdates(Map<? extends Long, ? extends Map<String, Object>> paramMap)
  {
    if (!supportsUpdates())
    {
      Log.e("Cursor", "commitUpdates not supported on this cursor, did you include the _id column?");
      return false;
    }
    HashMap localHashMap = mUpdatedRows;
    if (paramMap != null) {}
    try
    {
      mUpdatedRows.putAll(paramMap);
      if (mUpdatedRows.size() == 0) {
        return true;
      }
    }
    finally {}
    mDatabase.beginTransaction();
    do
    {
      try
      {
        paramMap = new StringBuilder(128);
        Iterator localIterator = mUpdatedRows.entrySet().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localObject2 = (Map.Entry)localIterator.next();
        localObject1 = (Map)((Map.Entry)localObject2).getValue();
        localObject2 = (Long)((Map.Entry)localObject2).getKey();
        if ((localObject2 == null) || (localObject1 == null)) {
          throw new IllegalStateException("null rowId or values found! rowId = " + localObject2 + ", values = " + localObject1);
        }
      }
      finally
      {
        mDatabase.endTransaction();
      }
    } while (((Map)localObject1).size() == 0);
    long l = ((Long)localObject2).longValue();
    Object localObject2 = ((Map)localObject1).entrySet().iterator();
    paramMap.setLength(0);
    paramMap.append("UPDATE " + mEditTable + " SET ");
    Object localObject1 = new Object[((Map)localObject1).size()];
    int i = 0;
    for (;;)
    {
      if (((Iterator)localObject2).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
        paramMap.append((String)localEntry.getKey());
        paramMap.append("=?");
        localObject1[i] = localEntry.getValue();
        if (((Iterator)localObject2).hasNext()) {
          paramMap.append(", ");
        }
      }
      else
      {
        paramMap.append(" WHERE " + mColumns[mRowIdColumnIndex] + '=' + l);
        paramMap.append(';');
        mDatabase.execSQL(paramMap.toString(), (Object[])localObject1);
        mDatabase.rowUpdated(mEditTable, l);
        break;
        mDatabase.setTransactionSuccessful();
        mDatabase.endTransaction();
        mUpdatedRows.clear();
        onChange(true);
        return true;
      }
      i += 1;
    }
  }
  
  public void deactivate()
  {
    super.deactivate();
    deactivateCommon();
    mDriver.cursorDeactivated();
  }
  
  public boolean deleteRow()
  {
    checkPosition();
    if ((mRowIdColumnIndex == -1) || (mCurrentRowID == null))
    {
      Log.e("Cursor", "Could not delete row because either the row ID column is not available or ithas not been read.");
      return false;
    }
    mDatabase.lock();
    try
    {
      mDatabase.delete(mEditTable, mColumns[mRowIdColumnIndex] + "=?", new String[] { mCurrentRowID.toString() });
      i = 1;
    }
    catch (SQLException localSQLException)
    {
      for (;;)
      {
        int j;
        int i = 0;
      }
    }
    finally
    {
      mDatabase.unlock();
    }
    j = mPos;
    requery();
    moveToPosition(j);
    mDatabase.unlock();
    if (i != 0)
    {
      onChange(true);
      return true;
    }
    return false;
  }
  
  public void fillWindow(int paramInt, android.database.CursorWindow paramCursorWindow)
  {
    if (mWindow == null) {
      mWindow = new net.sqlcipher.CursorWindow(true);
    }
    for (;;)
    {
      mWindow.setStartPosition(paramInt);
      mCount = mQuery.fillWindow(mWindow, mInitialRead, 0);
      if (mCount == -1)
      {
        mCount = (mInitialRead + paramInt);
        new Thread(new QueryThread(mCursorState), "query thread").start();
      }
      return;
      mCursorState += 1;
      queryThreadLock();
      try
      {
        mWindow.clear();
        queryThreadUnlock();
      }
      finally
      {
        queryThreadUnlock();
      }
    }
  }
  
  protected void finalize()
  {
    try
    {
      if (mWindow != null)
      {
        int j = mQuery.mSql.length();
        StringBuilder localStringBuilder = new StringBuilder().append("Finalizing a Cursor that has not been deactivated or closed. database = ").append(mDatabase.getPath()).append(", table = ").append(mEditTable).append(", query = ");
        String str = mQuery.mSql;
        int i = j;
        if (j > 100) {
          i = 100;
        }
        Log.e("Cursor", str.substring(0, i), mStackTrace);
        close();
        SQLiteDebug.notifyActiveCursorFinalized();
      }
      return;
    }
    finally
    {
      super.finalize();
    }
  }
  
  public int getColumnIndex(String paramString)
  {
    int j = -1;
    if (mColumnNameMap == null)
    {
      localObject = mColumns;
      int k = localObject.length;
      HashMap localHashMap = new HashMap(k, 1.0F);
      i = 0;
      while (i < k)
      {
        localHashMap.put(localObject[i], Integer.valueOf(i));
        i += 1;
      }
      mColumnNameMap = localHashMap;
    }
    int i = paramString.lastIndexOf('.');
    Object localObject = paramString;
    if (i != -1)
    {
      localObject = new Exception();
      Log.e("Cursor", "requesting column name with table name -- " + paramString, (Throwable)localObject);
      localObject = paramString.substring(i + 1);
    }
    paramString = (Integer)mColumnNameMap.get(localObject);
    i = j;
    if (paramString != null) {
      i = paramString.intValue();
    }
    return i;
  }
  
  public String[] getColumnNames()
  {
    return mColumns;
  }
  
  public int getCount()
  {
    if (mCount == -1) {
      fillWindow(0);
    }
    return mCount;
  }
  
  public SQLiteDatabase getDatabase()
  {
    return mDatabase;
  }
  
  public boolean onMove(int paramInt1, int paramInt2)
  {
    if ((mWindow == null) || (paramInt2 < mWindow.getStartPosition()) || (paramInt2 >= mWindow.getStartPosition() + mWindow.getNumRows())) {
      fillWindow(paramInt2);
    }
    return true;
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    super.registerDataSetObserver(paramDataSetObserver);
    if (((Integer.MAX_VALUE != mMaxRead) || (Integer.MAX_VALUE != mInitialRead)) && (mNotificationHandler == null)) {
      queryThreadLock();
    }
    try
    {
      mNotificationHandler = new MainThreadNotificationHandler();
      if (mPendingData)
      {
        notifyDataSetChange();
        mPendingData = false;
      }
      return;
    }
    finally
    {
      queryThreadUnlock();
    }
  }
  
  /* Error */
  public boolean requery()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 443	net/sqlcipher/database/SQLiteCursor:isClosed	()Z
    //   4: ifeq +5 -> 9
    //   7: iconst_0
    //   8: ireturn
    //   9: aload_0
    //   10: getfield 70	net/sqlcipher/database/SQLiteCursor:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   13: invokevirtual 83	net/sqlcipher/database/SQLiteDatabase:lock	()V
    //   16: aload_0
    //   17: getfield 118	net/sqlcipher/database/SQLiteCursor:mWindow	Lnet/sqlcipher/CursorWindow;
    //   20: ifnull +10 -> 30
    //   23: aload_0
    //   24: getfield 118	net/sqlcipher/database/SQLiteCursor:mWindow	Lnet/sqlcipher/CursorWindow;
    //   27: invokevirtual 170	net/sqlcipher/CursorWindow:clear	()V
    //   30: aload_0
    //   31: iconst_m1
    //   32: putfield 345	net/sqlcipher/database/SQLiteCursor:mPos	I
    //   35: aload_0
    //   36: getfield 72	net/sqlcipher/database/SQLiteCursor:mDriver	Lnet/sqlcipher/database/SQLiteCursorDriver;
    //   39: aload_0
    //   40: invokeinterface 447 2 0
    //   45: aload_0
    //   46: iconst_m1
    //   47: putfield 48	net/sqlcipher/database/SQLiteCursor:mCount	I
    //   50: aload_0
    //   51: aload_0
    //   52: getfield 55	net/sqlcipher/database/SQLiteCursor:mCursorState	I
    //   55: iconst_1
    //   56: iadd
    //   57: putfield 55	net/sqlcipher/database/SQLiteCursor:mCursorState	I
    //   60: aload_0
    //   61: invokespecial 167	net/sqlcipher/database/SQLiteCursor:queryThreadLock	()V
    //   64: aload_0
    //   65: getfield 78	net/sqlcipher/database/SQLiteCursor:mQuery	Lnet/sqlcipher/database/SQLiteQuery;
    //   68: invokevirtual 449	net/sqlcipher/database/SQLiteQuery:requery	()V
    //   71: aload_0
    //   72: invokespecial 173	net/sqlcipher/database/SQLiteCursor:queryThreadUnlock	()V
    //   75: aload_0
    //   76: getfield 70	net/sqlcipher/database/SQLiteCursor:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   79: invokevirtual 109	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   82: aload_0
    //   83: invokespecial 450	net/sqlcipher/AbstractWindowedCursor:requery	()Z
    //   86: ireturn
    //   87: astore_1
    //   88: aload_0
    //   89: invokespecial 173	net/sqlcipher/database/SQLiteCursor:queryThreadUnlock	()V
    //   92: aload_1
    //   93: athrow
    //   94: astore_1
    //   95: aload_0
    //   96: getfield 70	net/sqlcipher/database/SQLiteCursor:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   99: invokevirtual 109	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   102: aload_1
    //   103: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	104	0	this	SQLiteCursor
    //   87	6	1	localObject1	Object
    //   94	9	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   64	71	87	finally
    //   16	30	94	finally
    //   30	64	94	finally
    //   71	75	94	finally
    //   88	94	94	finally
  }
  
  public void setLoadStyle(int paramInt1, int paramInt2)
  {
    mMaxRead = paramInt2;
    mInitialRead = paramInt1;
    mLock = new ReentrantLock(true);
  }
  
  public void setSelectionArguments(String[] paramArrayOfString)
  {
    mDriver.setBindArguments(paramArrayOfString);
  }
  
  public void setWindow(net.sqlcipher.CursorWindow paramCursorWindow)
  {
    if (mWindow != null)
    {
      mCursorState += 1;
      queryThreadLock();
    }
    try
    {
      mWindow.close();
      queryThreadUnlock();
      mCount = -1;
      mWindow = paramCursorWindow;
      return;
    }
    finally
    {
      queryThreadUnlock();
    }
  }
  
  public boolean supportsUpdates()
  {
    return !TextUtils.isEmpty(mEditTable);
  }
  
  protected class MainThreadNotificationHandler
    extends Handler
  {
    protected MainThreadNotificationHandler() {}
    
    public void handleMessage(Message paramMessage)
    {
      notifyDataSetChange();
    }
  }
  
  private final class QueryThread
    implements Runnable
  {
    private final int mThreadState;
    
    QueryThread(int paramInt)
    {
      mThreadState = paramInt;
    }
    
    private void sendMessage()
    {
      if (mNotificationHandler != null)
      {
        mNotificationHandler.sendEmptyMessage(1);
        SQLiteCursor.access$002(SQLiteCursor.this, false);
        return;
      }
      SQLiteCursor.access$002(SQLiteCursor.this, true);
    }
    
    public void run()
    {
      Object localObject1 = mWindow;
      Process.setThreadPriority(Process.myTid(), 10);
      mLock.lock();
      if (mCursorState != mThreadState)
      {
        mLock.unlock();
        return;
      }
      for (;;)
      {
        try
        {
          int i = mQuery.fillWindow((net.sqlcipher.CursorWindow)localObject1, mMaxRead, mCount);
          if (i == 0) {
            break label169;
          }
          if (i == -1)
          {
            SQLiteCursor.access$512(SQLiteCursor.this, mMaxRead);
            sendMessage();
            mLock.unlock();
            break;
          }
          SQLiteCursor.access$502(SQLiteCursor.this, i);
          sendMessage();
          localObject1 = mLock;
        }
        catch (Exception localException)
        {
          ReentrantLock localReentrantLock1 = mLock;
          continue;
        }
        finally
        {
          mLock.unlock();
        }
        ((ReentrantLock)localObject1).unlock();
        return;
        label169:
        ReentrantLock localReentrantLock2 = mLock;
      }
    }
  }
}
