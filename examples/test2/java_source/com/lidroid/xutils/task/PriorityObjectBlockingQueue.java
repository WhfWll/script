package com.lidroid.xutils.task;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

public class PriorityObjectBlockingQueue<E>
  extends AbstractQueue<E>
  implements BlockingQueue<E>, Serializable
{
  private static final long serialVersionUID = -6903933977591709194L;
  private final int capacity;
  private final AtomicInteger count = new AtomicInteger();
  transient Node<E> head;
  private transient Node<E> last;
  private final Condition notEmpty = takeLock.newCondition();
  private final Condition notFull = putLock.newCondition();
  private final ReentrantLock putLock = new ReentrantLock();
  private final ReentrantLock takeLock = new ReentrantLock();
  
  public PriorityObjectBlockingQueue()
  {
    this(Integer.MAX_VALUE);
  }
  
  public PriorityObjectBlockingQueue(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException();
    }
    capacity = paramInt;
    Node localNode = new Node(null);
    head = localNode;
    last = localNode;
  }
  
  public PriorityObjectBlockingQueue(Collection<? extends E> paramCollection)
  {
    this(Integer.MAX_VALUE);
    ReentrantLock localReentrantLock = putLock;
    localReentrantLock.lock();
    int i = 0;
    for (;;)
    {
      Object localObject;
      try
      {
        paramCollection = paramCollection.iterator();
        if (!paramCollection.hasNext())
        {
          count.set(i);
          return;
        }
        localObject = (Object)paramCollection.next();
        if (localObject == null) {
          throw new NullPointerException();
        }
      }
      finally
      {
        localReentrantLock.unlock();
      }
      if (i == capacity) {
        throw new IllegalStateException("Queue full");
      }
      opQueue(new Node(localObject));
      i += 1;
    }
  }
  
  private E _dequeue()
  {
    Object localObject = head;
    Node localNode = next;
    next = ((Node)localObject);
    head = localNode;
    localObject = localNode.getValue();
    localNode.setValue(null);
    return localObject;
  }
  
  private void _enqueue(Node<E> paramNode)
  {
    int i = 0;
    for (Node localNode1 = head;; localNode1 = next)
    {
      if (next == null) {}
      for (;;)
      {
        if (i == 0)
        {
          last.next = paramNode;
          last = paramNode;
        }
        return;
        Node localNode2 = next;
        if (localNode2.getPriority().ordinal() <= paramNode.getPriority().ordinal()) {
          break;
        }
        next = paramNode;
        next = localNode2;
        i = 1;
      }
    }
  }
  
  private E opQueue(Node<E> paramNode)
  {
    if (paramNode == null) {}
    for (;;)
    {
      try
      {
        paramNode = _dequeue();
        return paramNode;
      }
      finally {}
      _enqueue(paramNode);
      paramNode = null;
    }
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream.defaultReadObject();
    count.set(0);
    Object localObject = new Node(null);
    head = ((Node)localObject);
    last = ((Node)localObject);
    for (;;)
    {
      localObject = paramObjectInputStream.readObject();
      if (localObject == null) {
        return;
      }
      add(localObject);
    }
  }
  
  private void signalNotEmpty()
  {
    ReentrantLock localReentrantLock = takeLock;
    localReentrantLock.lock();
    try
    {
      notEmpty.signal();
      return;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  private void signalNotFull()
  {
    ReentrantLock localReentrantLock = putLock;
    localReentrantLock.lock();
    try
    {
      notFull.signal();
      return;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  /* Error */
  private void writeObject(java.io.ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 175	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyLock	()V
    //   4: aload_1
    //   5: invokevirtual 180	java/io/ObjectOutputStream:defaultWriteObject	()V
    //   8: aload_0
    //   9: getfield 71	com/lidroid/xutils/task/PriorityObjectBlockingQueue:head	Lcom/lidroid/xutils/task/Node;
    //   12: getfield 120	com/lidroid/xutils/task/Node:next	Lcom/lidroid/xutils/task/Node;
    //   15: astore_2
    //   16: aload_2
    //   17: ifnonnull +13 -> 30
    //   20: aload_1
    //   21: aconst_null
    //   22: invokevirtual 182	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   25: aload_0
    //   26: invokevirtual 185	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyUnlock	()V
    //   29: return
    //   30: aload_1
    //   31: aload_2
    //   32: invokevirtual 123	com/lidroid/xutils/task/Node:getValue	()Ljava/lang/Object;
    //   35: invokevirtual 182	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   38: aload_2
    //   39: getfield 120	com/lidroid/xutils/task/Node:next	Lcom/lidroid/xutils/task/Node;
    //   42: astore_2
    //   43: goto -27 -> 16
    //   46: astore_1
    //   47: aload_0
    //   48: invokevirtual 185	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyUnlock	()V
    //   51: aload_1
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	this	PriorityObjectBlockingQueue
    //   0	53	1	paramObjectOutputStream	java.io.ObjectOutputStream
    //   15	28	2	localNode	Node
    // Exception table:
    //   from	to	target	type
    //   4	16	46	finally
    //   20	25	46	finally
    //   30	43	46	finally
  }
  
  /* Error */
  public void clear()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 175	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyLock	()V
    //   4: aload_0
    //   5: getfield 71	com/lidroid/xutils/task/PriorityObjectBlockingQueue:head	Lcom/lidroid/xutils/task/Node;
    //   8: astore_1
    //   9: aload_1
    //   10: getfield 120	com/lidroid/xutils/task/Node:next	Lcom/lidroid/xutils/task/Node;
    //   13: astore_2
    //   14: aload_2
    //   15: ifnonnull +40 -> 55
    //   18: aload_0
    //   19: aload_0
    //   20: getfield 73	com/lidroid/xutils/task/PriorityObjectBlockingQueue:last	Lcom/lidroid/xutils/task/Node;
    //   23: putfield 71	com/lidroid/xutils/task/PriorityObjectBlockingQueue:head	Lcom/lidroid/xutils/task/Node;
    //   26: aload_0
    //   27: getfield 44	com/lidroid/xutils/task/PriorityObjectBlockingQueue:count	Ljava/util/concurrent/atomic/AtomicInteger;
    //   30: iconst_0
    //   31: invokevirtual 190	java/util/concurrent/atomic/AtomicInteger:getAndSet	(I)I
    //   34: aload_0
    //   35: getfield 64	com/lidroid/xutils/task/PriorityObjectBlockingQueue:capacity	I
    //   38: if_icmpne +12 -> 50
    //   41: aload_0
    //   42: getfield 59	com/lidroid/xutils/task/PriorityObjectBlockingQueue:notFull	Ljava/util/concurrent/locks/Condition;
    //   45: invokeinterface 169 1 0
    //   50: aload_0
    //   51: invokevirtual 185	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyUnlock	()V
    //   54: return
    //   55: aload_1
    //   56: aload_1
    //   57: putfield 120	com/lidroid/xutils/task/Node:next	Lcom/lidroid/xutils/task/Node;
    //   60: aload_2
    //   61: aconst_null
    //   62: invokevirtual 126	com/lidroid/xutils/task/Node:setValue	(Ljava/lang/Object;)V
    //   65: aload_2
    //   66: astore_1
    //   67: goto -58 -> 9
    //   70: astore_1
    //   71: aload_0
    //   72: invokevirtual 185	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyUnlock	()V
    //   75: aload_1
    //   76: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	77	0	this	PriorityObjectBlockingQueue
    //   8	59	1	localObject1	Object
    //   70	6	1	localObject2	Object
    //   13	53	2	localNode	Node
    // Exception table:
    //   from	to	target	type
    //   4	9	70	finally
    //   9	14	70	finally
    //   18	50	70	finally
    //   55	65	70	finally
  }
  
  /* Error */
  public boolean contains(Object paramObject)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +5 -> 6
    //   4: iconst_0
    //   5: ireturn
    //   6: aload_0
    //   7: invokevirtual 175	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyLock	()V
    //   10: aload_0
    //   11: getfield 71	com/lidroid/xutils/task/PriorityObjectBlockingQueue:head	Lcom/lidroid/xutils/task/Node;
    //   14: getfield 120	com/lidroid/xutils/task/Node:next	Lcom/lidroid/xutils/task/Node;
    //   17: astore_3
    //   18: aload_3
    //   19: ifnonnull +9 -> 28
    //   22: aload_0
    //   23: invokevirtual 185	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyUnlock	()V
    //   26: iconst_0
    //   27: ireturn
    //   28: aload_1
    //   29: aload_3
    //   30: invokevirtual 123	com/lidroid/xutils/task/Node:getValue	()Ljava/lang/Object;
    //   33: invokevirtual 194	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   36: istore_2
    //   37: iload_2
    //   38: ifeq +9 -> 47
    //   41: aload_0
    //   42: invokevirtual 185	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyUnlock	()V
    //   45: iconst_1
    //   46: ireturn
    //   47: aload_3
    //   48: getfield 120	com/lidroid/xutils/task/Node:next	Lcom/lidroid/xutils/task/Node;
    //   51: astore_3
    //   52: goto -34 -> 18
    //   55: astore_1
    //   56: aload_0
    //   57: invokevirtual 185	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyUnlock	()V
    //   60: aload_1
    //   61: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	PriorityObjectBlockingQueue
    //   0	62	1	paramObject	Object
    //   36	2	2	bool	boolean
    //   17	35	3	localNode	Node
    // Exception table:
    //   from	to	target	type
    //   10	18	55	finally
    //   28	37	55	finally
    //   47	52	55	finally
  }
  
  public int drainTo(Collection<? super E> paramCollection)
  {
    return drainTo(paramCollection, Integer.MAX_VALUE);
  }
  
  /* Error */
  public int drainTo(Collection<? super E> paramCollection, int paramInt)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +11 -> 12
    //   4: new 103	java/lang/NullPointerException
    //   7: dup
    //   8: invokespecial 104	java/lang/NullPointerException:<init>	()V
    //   11: athrow
    //   12: aload_1
    //   13: aload_0
    //   14: if_acmpne +11 -> 25
    //   17: new 61	java/lang/IllegalArgumentException
    //   20: dup
    //   21: invokespecial 62	java/lang/IllegalArgumentException:<init>	()V
    //   24: athrow
    //   25: iload_2
    //   26: ifgt +5 -> 31
    //   29: iconst_0
    //   30: ireturn
    //   31: iconst_0
    //   32: istore 7
    //   34: iconst_0
    //   35: istore 5
    //   37: iconst_0
    //   38: istore 6
    //   40: aload_0
    //   41: getfield 49	com/lidroid/xutils/task/PriorityObjectBlockingQueue:takeLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   44: astore 11
    //   46: aload 11
    //   48: invokevirtual 77	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   51: iload 5
    //   53: istore_3
    //   54: iload_2
    //   55: aload_0
    //   56: getfield 44	com/lidroid/xutils/task/PriorityObjectBlockingQueue:count	Ljava/util/concurrent/atomic/AtomicInteger;
    //   59: invokevirtual 203	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   62: invokestatic 209	java/lang/Math:min	(II)I
    //   65: istore 8
    //   67: iload 5
    //   69: istore_3
    //   70: aload_0
    //   71: getfield 71	com/lidroid/xutils/task/PriorityObjectBlockingQueue:head	Lcom/lidroid/xutils/task/Node;
    //   74: astore 9
    //   76: iconst_0
    //   77: istore 4
    //   79: iload 4
    //   81: iload 8
    //   83: if_icmplt +67 -> 150
    //   86: iload 6
    //   88: istore_2
    //   89: iload 4
    //   91: ifle +43 -> 134
    //   94: iload 5
    //   96: istore_3
    //   97: aload_0
    //   98: aload 9
    //   100: putfield 71	com/lidroid/xutils/task/PriorityObjectBlockingQueue:head	Lcom/lidroid/xutils/task/Node;
    //   103: iload 5
    //   105: istore_3
    //   106: aload_0
    //   107: getfield 44	com/lidroid/xutils/task/PriorityObjectBlockingQueue:count	Ljava/util/concurrent/atomic/AtomicInteger;
    //   110: iload 4
    //   112: ineg
    //   113: invokevirtual 212	java/util/concurrent/atomic/AtomicInteger:getAndAdd	(I)I
    //   116: istore_2
    //   117: iload 5
    //   119: istore_3
    //   120: aload_0
    //   121: getfield 64	com/lidroid/xutils/task/PriorityObjectBlockingQueue:capacity	I
    //   124: istore 4
    //   126: iload_2
    //   127: iload 4
    //   129: if_icmpne +66 -> 195
    //   132: iconst_1
    //   133: istore_2
    //   134: aload 11
    //   136: invokevirtual 95	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   139: iload_2
    //   140: ifeq +7 -> 147
    //   143: aload_0
    //   144: invokespecial 214	com/lidroid/xutils/task/PriorityObjectBlockingQueue:signalNotFull	()V
    //   147: iload 8
    //   149: ireturn
    //   150: aload 9
    //   152: getfield 120	com/lidroid/xutils/task/Node:next	Lcom/lidroid/xutils/task/Node;
    //   155: astore 10
    //   157: aload_1
    //   158: aload 10
    //   160: invokevirtual 123	com/lidroid/xutils/task/Node:getValue	()Ljava/lang/Object;
    //   163: invokeinterface 215 2 0
    //   168: pop
    //   169: aload 10
    //   171: aconst_null
    //   172: invokevirtual 126	com/lidroid/xutils/task/Node:setValue	(Ljava/lang/Object;)V
    //   175: aload 9
    //   177: aload 9
    //   179: putfield 120	com/lidroid/xutils/task/Node:next	Lcom/lidroid/xutils/task/Node;
    //   182: aload 10
    //   184: astore 9
    //   186: iload 4
    //   188: iconst_1
    //   189: iadd
    //   190: istore 4
    //   192: goto -113 -> 79
    //   195: iconst_0
    //   196: istore_2
    //   197: goto -63 -> 134
    //   200: astore_1
    //   201: iload 7
    //   203: istore_2
    //   204: iload 4
    //   206: ifle +34 -> 240
    //   209: iload 5
    //   211: istore_3
    //   212: aload_0
    //   213: aload 9
    //   215: putfield 71	com/lidroid/xutils/task/PriorityObjectBlockingQueue:head	Lcom/lidroid/xutils/task/Node;
    //   218: iload 5
    //   220: istore_3
    //   221: aload_0
    //   222: getfield 44	com/lidroid/xutils/task/PriorityObjectBlockingQueue:count	Ljava/util/concurrent/atomic/AtomicInteger;
    //   225: iload 4
    //   227: ineg
    //   228: invokevirtual 212	java/util/concurrent/atomic/AtomicInteger:getAndAdd	(I)I
    //   231: aload_0
    //   232: getfield 64	com/lidroid/xutils/task/PriorityObjectBlockingQueue:capacity	I
    //   235: if_icmpne +25 -> 260
    //   238: iconst_1
    //   239: istore_2
    //   240: iload_2
    //   241: istore_3
    //   242: aload_1
    //   243: athrow
    //   244: astore_1
    //   245: aload 11
    //   247: invokevirtual 95	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   250: iload_3
    //   251: ifeq +7 -> 258
    //   254: aload_0
    //   255: invokespecial 214	com/lidroid/xutils/task/PriorityObjectBlockingQueue:signalNotFull	()V
    //   258: aload_1
    //   259: athrow
    //   260: iconst_0
    //   261: istore_2
    //   262: goto -22 -> 240
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	265	0	this	PriorityObjectBlockingQueue
    //   0	265	1	paramCollection	Collection<? super E>
    //   0	265	2	paramInt	int
    //   53	198	3	i	int
    //   77	149	4	j	int
    //   35	184	5	k	int
    //   38	49	6	m	int
    //   32	170	7	n	int
    //   65	83	8	i1	int
    //   74	140	9	localObject	Object
    //   155	28	10	localNode	Node
    //   44	202	11	localReentrantLock	ReentrantLock
    // Exception table:
    //   from	to	target	type
    //   150	182	200	finally
    //   54	67	244	finally
    //   70	76	244	finally
    //   97	103	244	finally
    //   106	117	244	finally
    //   120	126	244	finally
    //   212	218	244	finally
    //   221	238	244	finally
    //   242	244	244	finally
  }
  
  void fullyLock()
  {
    putLock.lock();
    takeLock.lock();
  }
  
  void fullyUnlock()
  {
    takeLock.unlock();
    putLock.unlock();
  }
  
  public Iterator<E> iterator()
  {
    return new Itr();
  }
  
  public boolean offer(E paramE)
  {
    if (paramE == null) {
      throw new NullPointerException();
    }
    AtomicInteger localAtomicInteger = count;
    if (localAtomicInteger.get() == capacity) {}
    for (;;)
    {
      return false;
      int i = -1;
      Node localNode = new Node(paramE);
      paramE = putLock;
      paramE.lock();
      try
      {
        if (localAtomicInteger.get() < capacity)
        {
          opQueue(localNode);
          int j = localAtomicInteger.getAndIncrement();
          i = j;
          if (j + 1 < capacity)
          {
            notFull.signal();
            i = j;
          }
        }
        paramE.unlock();
        if (i == 0) {
          signalNotEmpty();
        }
        if (i < 0) {
          continue;
        }
        return true;
      }
      finally
      {
        paramE.unlock();
      }
    }
  }
  
  /* Error */
  public boolean offer(E paramE, long paramLong, java.util.concurrent.TimeUnit paramTimeUnit)
    throws java.lang.InterruptedException
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +11 -> 12
    //   4: new 103	java/lang/NullPointerException
    //   7: dup
    //   8: invokespecial 104	java/lang/NullPointerException:<init>	()V
    //   11: athrow
    //   12: aload 4
    //   14: lload_2
    //   15: invokevirtual 236	java/util/concurrent/TimeUnit:toNanos	(J)J
    //   18: lstore_2
    //   19: aload_0
    //   20: getfield 57	com/lidroid/xutils/task/PriorityObjectBlockingQueue:putLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   23: astore 4
    //   25: aload_0
    //   26: getfield 44	com/lidroid/xutils/task/PriorityObjectBlockingQueue:count	Ljava/util/concurrent/atomic/AtomicInteger;
    //   29: astore 6
    //   31: aload 4
    //   33: invokevirtual 239	java/util/concurrent/locks/ReentrantLock:lockInterruptibly	()V
    //   36: aload 6
    //   38: invokevirtual 203	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   41: aload_0
    //   42: getfield 64	com/lidroid/xutils/task/PriorityObjectBlockingQueue:capacity	I
    //   45: if_icmpeq +59 -> 104
    //   48: aload_0
    //   49: new 66	com/lidroid/xutils/task/Node
    //   52: dup
    //   53: aload_1
    //   54: invokespecial 69	com/lidroid/xutils/task/Node:<init>	(Ljava/lang/Object;)V
    //   57: invokespecial 115	com/lidroid/xutils/task/PriorityObjectBlockingQueue:opQueue	(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;
    //   60: pop
    //   61: aload 6
    //   63: invokevirtual 224	java/util/concurrent/atomic/AtomicInteger:getAndIncrement	()I
    //   66: istore 5
    //   68: iload 5
    //   70: iconst_1
    //   71: iadd
    //   72: aload_0
    //   73: getfield 64	com/lidroid/xutils/task/PriorityObjectBlockingQueue:capacity	I
    //   76: if_icmpge +12 -> 88
    //   79: aload_0
    //   80: getfield 59	com/lidroid/xutils/task/PriorityObjectBlockingQueue:notFull	Ljava/util/concurrent/locks/Condition;
    //   83: invokeinterface 169 1 0
    //   88: aload 4
    //   90: invokevirtual 95	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   93: iload 5
    //   95: ifne +7 -> 102
    //   98: aload_0
    //   99: invokespecial 226	com/lidroid/xutils/task/PriorityObjectBlockingQueue:signalNotEmpty	()V
    //   102: iconst_1
    //   103: ireturn
    //   104: lload_2
    //   105: lconst_0
    //   106: lcmp
    //   107: ifgt +10 -> 117
    //   110: aload 4
    //   112: invokevirtual 95	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   115: iconst_0
    //   116: ireturn
    //   117: aload_0
    //   118: getfield 59	com/lidroid/xutils/task/PriorityObjectBlockingQueue:notFull	Ljava/util/concurrent/locks/Condition;
    //   121: lload_2
    //   122: invokeinterface 242 3 0
    //   127: lstore_2
    //   128: goto -92 -> 36
    //   131: astore_1
    //   132: aload 4
    //   134: invokevirtual 95	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   137: aload_1
    //   138: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	139	0	this	PriorityObjectBlockingQueue
    //   0	139	1	paramE	E
    //   0	139	2	paramLong	long
    //   0	139	4	paramTimeUnit	java.util.concurrent.TimeUnit
    //   66	28	5	i	int
    //   29	33	6	localAtomicInteger	AtomicInteger
    // Exception table:
    //   from	to	target	type
    //   36	88	131	finally
    //   117	128	131	finally
  }
  
  public E peek()
  {
    if (count.get() == 0) {
      return null;
    }
    ReentrantLock localReentrantLock = takeLock;
    localReentrantLock.lock();
    try
    {
      Object localObject1 = head.next;
      if (localObject1 == null) {
        return null;
      }
      localObject1 = ((Node)localObject1).getValue();
      return localObject1;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  public E poll()
  {
    Object localObject3 = null;
    AtomicInteger localAtomicInteger = count;
    if (localAtomicInteger.get() == 0) {}
    for (;;)
    {
      return localObject3;
      Object localObject1 = null;
      int i = -1;
      ReentrantLock localReentrantLock = takeLock;
      localReentrantLock.lock();
      try
      {
        if (localAtomicInteger.get() > 0)
        {
          localObject3 = opQueue(null);
          int j = localAtomicInteger.getAndDecrement();
          i = j;
          localObject1 = localObject3;
          if (j > 1)
          {
            notEmpty.signal();
            localObject1 = localObject3;
            i = j;
          }
        }
        localReentrantLock.unlock();
        localObject3 = localObject1;
        if (i != capacity) {
          continue;
        }
        signalNotFull();
        return localObject1;
      }
      finally
      {
        localReentrantLock.unlock();
      }
    }
  }
  
  /* Error */
  public E poll(long paramLong, java.util.concurrent.TimeUnit paramTimeUnit)
    throws java.lang.InterruptedException
  {
    // Byte code:
    //   0: aload_3
    //   1: lload_1
    //   2: invokevirtual 236	java/util/concurrent/TimeUnit:toNanos	(J)J
    //   5: lstore_1
    //   6: aload_0
    //   7: getfield 44	com/lidroid/xutils/task/PriorityObjectBlockingQueue:count	Ljava/util/concurrent/atomic/AtomicInteger;
    //   10: astore 5
    //   12: aload_0
    //   13: getfield 49	com/lidroid/xutils/task/PriorityObjectBlockingQueue:takeLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   16: astore_3
    //   17: aload_3
    //   18: invokevirtual 239	java/util/concurrent/locks/ReentrantLock:lockInterruptibly	()V
    //   21: aload 5
    //   23: invokevirtual 203	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   26: ifeq +52 -> 78
    //   29: aload_0
    //   30: aconst_null
    //   31: invokespecial 115	com/lidroid/xutils/task/PriorityObjectBlockingQueue:opQueue	(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;
    //   34: astore 6
    //   36: aload 5
    //   38: invokevirtual 248	java/util/concurrent/atomic/AtomicInteger:getAndDecrement	()I
    //   41: istore 4
    //   43: iload 4
    //   45: iconst_1
    //   46: if_icmple +12 -> 58
    //   49: aload_0
    //   50: getfield 55	com/lidroid/xutils/task/PriorityObjectBlockingQueue:notEmpty	Ljava/util/concurrent/locks/Condition;
    //   53: invokeinterface 169 1 0
    //   58: aload_3
    //   59: invokevirtual 95	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   62: iload 4
    //   64: aload_0
    //   65: getfield 64	com/lidroid/xutils/task/PriorityObjectBlockingQueue:capacity	I
    //   68: if_icmpne +7 -> 75
    //   71: aload_0
    //   72: invokespecial 214	com/lidroid/xutils/task/PriorityObjectBlockingQueue:signalNotFull	()V
    //   75: aload 6
    //   77: areturn
    //   78: lload_1
    //   79: lconst_0
    //   80: lcmp
    //   81: ifgt +9 -> 90
    //   84: aload_3
    //   85: invokevirtual 95	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   88: aconst_null
    //   89: areturn
    //   90: aload_0
    //   91: getfield 55	com/lidroid/xutils/task/PriorityObjectBlockingQueue:notEmpty	Ljava/util/concurrent/locks/Condition;
    //   94: lload_1
    //   95: invokeinterface 242 3 0
    //   100: lstore_1
    //   101: goto -80 -> 21
    //   104: astore 5
    //   106: aload_3
    //   107: invokevirtual 95	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   110: aload 5
    //   112: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	113	0	this	PriorityObjectBlockingQueue
    //   0	113	1	paramLong	long
    //   0	113	3	paramTimeUnit	java.util.concurrent.TimeUnit
    //   41	28	4	i	int
    //   10	27	5	localAtomicInteger	AtomicInteger
    //   104	7	5	localObject1	Object
    //   34	42	6	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   21	43	104	finally
    //   49	58	104	finally
    //   90	101	104	finally
  }
  
  /* Error */
  public void put(E paramE)
    throws java.lang.InterruptedException
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +11 -> 12
    //   4: new 103	java/lang/NullPointerException
    //   7: dup
    //   8: invokespecial 104	java/lang/NullPointerException:<init>	()V
    //   11: athrow
    //   12: new 66	com/lidroid/xutils/task/Node
    //   15: dup
    //   16: aload_1
    //   17: invokespecial 69	com/lidroid/xutils/task/Node:<init>	(Ljava/lang/Object;)V
    //   20: astore_3
    //   21: aload_0
    //   22: getfield 57	com/lidroid/xutils/task/PriorityObjectBlockingQueue:putLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   25: astore_1
    //   26: aload_0
    //   27: getfield 44	com/lidroid/xutils/task/PriorityObjectBlockingQueue:count	Ljava/util/concurrent/atomic/AtomicInteger;
    //   30: astore 4
    //   32: aload_1
    //   33: invokevirtual 239	java/util/concurrent/locks/ReentrantLock:lockInterruptibly	()V
    //   36: aload 4
    //   38: invokevirtual 203	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   41: aload_0
    //   42: getfield 64	com/lidroid/xutils/task/PriorityObjectBlockingQueue:capacity	I
    //   45: if_icmpeq +47 -> 92
    //   48: aload_0
    //   49: aload_3
    //   50: invokespecial 115	com/lidroid/xutils/task/PriorityObjectBlockingQueue:opQueue	(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;
    //   53: pop
    //   54: aload 4
    //   56: invokevirtual 224	java/util/concurrent/atomic/AtomicInteger:getAndIncrement	()I
    //   59: istore_2
    //   60: iload_2
    //   61: iconst_1
    //   62: iadd
    //   63: aload_0
    //   64: getfield 64	com/lidroid/xutils/task/PriorityObjectBlockingQueue:capacity	I
    //   67: if_icmpge +12 -> 79
    //   70: aload_0
    //   71: getfield 59	com/lidroid/xutils/task/PriorityObjectBlockingQueue:notFull	Ljava/util/concurrent/locks/Condition;
    //   74: invokeinterface 169 1 0
    //   79: aload_1
    //   80: invokevirtual 95	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   83: iload_2
    //   84: ifne +7 -> 91
    //   87: aload_0
    //   88: invokespecial 226	com/lidroid/xutils/task/PriorityObjectBlockingQueue:signalNotEmpty	()V
    //   91: return
    //   92: aload_0
    //   93: getfield 59	com/lidroid/xutils/task/PriorityObjectBlockingQueue:notFull	Ljava/util/concurrent/locks/Condition;
    //   96: invokeinterface 254 1 0
    //   101: goto -65 -> 36
    //   104: astore_3
    //   105: aload_1
    //   106: invokevirtual 95	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   109: aload_3
    //   110: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	111	0	this	PriorityObjectBlockingQueue
    //   0	111	1	paramE	E
    //   59	25	2	i	int
    //   20	30	3	localNode	Node
    //   104	6	3	localObject	Object
    //   30	25	4	localAtomicInteger	AtomicInteger
    // Exception table:
    //   from	to	target	type
    //   36	79	104	finally
    //   92	101	104	finally
  }
  
  public int remainingCapacity()
  {
    return capacity - count.get();
  }
  
  /* Error */
  public boolean remove(Object paramObject)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +5 -> 6
    //   4: iconst_0
    //   5: ireturn
    //   6: aload_0
    //   7: invokevirtual 175	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyLock	()V
    //   10: aload_0
    //   11: getfield 71	com/lidroid/xutils/task/PriorityObjectBlockingQueue:head	Lcom/lidroid/xutils/task/Node;
    //   14: astore_3
    //   15: aload_3
    //   16: getfield 120	com/lidroid/xutils/task/Node:next	Lcom/lidroid/xutils/task/Node;
    //   19: astore_2
    //   20: aload_2
    //   21: ifnonnull +9 -> 30
    //   24: aload_0
    //   25: invokevirtual 185	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyUnlock	()V
    //   28: iconst_0
    //   29: ireturn
    //   30: aload_1
    //   31: aload_2
    //   32: invokevirtual 123	com/lidroid/xutils/task/Node:getValue	()Ljava/lang/Object;
    //   35: invokevirtual 194	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   38: ifeq +15 -> 53
    //   41: aload_0
    //   42: aload_2
    //   43: aload_3
    //   44: invokevirtual 261	com/lidroid/xutils/task/PriorityObjectBlockingQueue:unlink	(Lcom/lidroid/xutils/task/Node;Lcom/lidroid/xutils/task/Node;)V
    //   47: aload_0
    //   48: invokevirtual 185	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyUnlock	()V
    //   51: iconst_1
    //   52: ireturn
    //   53: aload_2
    //   54: astore_3
    //   55: aload_2
    //   56: getfield 120	com/lidroid/xutils/task/Node:next	Lcom/lidroid/xutils/task/Node;
    //   59: astore_2
    //   60: goto -40 -> 20
    //   63: astore_1
    //   64: aload_0
    //   65: invokevirtual 185	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyUnlock	()V
    //   68: aload_1
    //   69: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	this	PriorityObjectBlockingQueue
    //   0	70	1	paramObject	Object
    //   19	41	2	localNode	Node
    //   14	41	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   10	20	63	finally
    //   30	47	63	finally
    //   55	60	63	finally
  }
  
  public int size()
  {
    return count.get();
  }
  
  /* Error */
  public E take()
    throws java.lang.InterruptedException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 44	com/lidroid/xutils/task/PriorityObjectBlockingQueue:count	Ljava/util/concurrent/atomic/AtomicInteger;
    //   4: astore_3
    //   5: aload_0
    //   6: getfield 49	com/lidroid/xutils/task/PriorityObjectBlockingQueue:takeLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   9: astore_2
    //   10: aload_2
    //   11: invokevirtual 239	java/util/concurrent/locks/ReentrantLock:lockInterruptibly	()V
    //   14: aload_3
    //   15: invokevirtual 203	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   18: ifeq +48 -> 66
    //   21: aload_0
    //   22: aconst_null
    //   23: invokespecial 115	com/lidroid/xutils/task/PriorityObjectBlockingQueue:opQueue	(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;
    //   26: astore 4
    //   28: aload_3
    //   29: invokevirtual 248	java/util/concurrent/atomic/AtomicInteger:getAndDecrement	()I
    //   32: istore_1
    //   33: iload_1
    //   34: iconst_1
    //   35: if_icmple +12 -> 47
    //   38: aload_0
    //   39: getfield 55	com/lidroid/xutils/task/PriorityObjectBlockingQueue:notEmpty	Ljava/util/concurrent/locks/Condition;
    //   42: invokeinterface 169 1 0
    //   47: aload_2
    //   48: invokevirtual 95	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   51: iload_1
    //   52: aload_0
    //   53: getfield 64	com/lidroid/xutils/task/PriorityObjectBlockingQueue:capacity	I
    //   56: if_icmpne +7 -> 63
    //   59: aload_0
    //   60: invokespecial 214	com/lidroid/xutils/task/PriorityObjectBlockingQueue:signalNotFull	()V
    //   63: aload 4
    //   65: areturn
    //   66: aload_0
    //   67: getfield 55	com/lidroid/xutils/task/PriorityObjectBlockingQueue:notEmpty	Ljava/util/concurrent/locks/Condition;
    //   70: invokeinterface 254 1 0
    //   75: goto -61 -> 14
    //   78: astore_3
    //   79: aload_2
    //   80: invokevirtual 95	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   83: aload_3
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	PriorityObjectBlockingQueue
    //   32	25	1	i	int
    //   9	71	2	localReentrantLock	ReentrantLock
    //   4	25	3	localAtomicInteger	AtomicInteger
    //   78	6	3	localObject1	Object
    //   26	38	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   14	33	78	finally
    //   38	47	78	finally
    //   66	75	78	finally
  }
  
  /* Error */
  public Object[] toArray()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 175	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyLock	()V
    //   4: aload_0
    //   5: getfield 44	com/lidroid/xutils/task/PriorityObjectBlockingQueue:count	Ljava/util/concurrent/atomic/AtomicInteger;
    //   8: invokevirtual 203	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   11: anewarray 101	java/lang/Object
    //   14: astore_3
    //   15: aload_0
    //   16: getfield 71	com/lidroid/xutils/task/PriorityObjectBlockingQueue:head	Lcom/lidroid/xutils/task/Node;
    //   19: getfield 120	com/lidroid/xutils/task/Node:next	Lcom/lidroid/xutils/task/Node;
    //   22: astore_2
    //   23: iconst_0
    //   24: istore_1
    //   25: aload_2
    //   26: ifnonnull +9 -> 35
    //   29: aload_0
    //   30: invokevirtual 185	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyUnlock	()V
    //   33: aload_3
    //   34: areturn
    //   35: aload_3
    //   36: iload_1
    //   37: aload_2
    //   38: invokevirtual 123	com/lidroid/xutils/task/Node:getValue	()Ljava/lang/Object;
    //   41: aastore
    //   42: aload_2
    //   43: getfield 120	com/lidroid/xutils/task/Node:next	Lcom/lidroid/xutils/task/Node;
    //   46: astore_2
    //   47: iload_1
    //   48: iconst_1
    //   49: iadd
    //   50: istore_1
    //   51: goto -26 -> 25
    //   54: astore_2
    //   55: aload_0
    //   56: invokevirtual 185	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyUnlock	()V
    //   59: aload_2
    //   60: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	61	0	this	PriorityObjectBlockingQueue
    //   24	27	1	i	int
    //   22	25	2	localNode	Node
    //   54	6	2	localObject	Object
    //   14	22	3	arrayOfObject	Object[]
    // Exception table:
    //   from	to	target	type
    //   4	23	54	finally
    //   35	47	54	finally
  }
  
  /* Error */
  public <T> T[] toArray(T[] paramArrayOfT)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 175	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyLock	()V
    //   4: aload_0
    //   5: getfield 44	com/lidroid/xutils/task/PriorityObjectBlockingQueue:count	Ljava/util/concurrent/atomic/AtomicInteger;
    //   8: invokevirtual 203	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   11: istore_2
    //   12: aload_1
    //   13: astore_3
    //   14: aload_1
    //   15: arraylength
    //   16: iload_2
    //   17: if_icmpge +18 -> 35
    //   20: aload_1
    //   21: invokevirtual 270	java/lang/Object:getClass	()Ljava/lang/Class;
    //   24: invokevirtual 275	java/lang/Class:getComponentType	()Ljava/lang/Class;
    //   27: iload_2
    //   28: invokestatic 281	java/lang/reflect/Array:newInstance	(Ljava/lang/Class;I)Ljava/lang/Object;
    //   31: checkcast 283	[Ljava/lang/Object;
    //   34: astore_3
    //   35: aload_0
    //   36: getfield 71	com/lidroid/xutils/task/PriorityObjectBlockingQueue:head	Lcom/lidroid/xutils/task/Node;
    //   39: getfield 120	com/lidroid/xutils/task/Node:next	Lcom/lidroid/xutils/task/Node;
    //   42: astore_1
    //   43: iconst_0
    //   44: istore_2
    //   45: aload_1
    //   46: ifnonnull +19 -> 65
    //   49: aload_3
    //   50: arraylength
    //   51: iload_2
    //   52: if_icmple +7 -> 59
    //   55: aload_3
    //   56: iload_2
    //   57: aconst_null
    //   58: aastore
    //   59: aload_0
    //   60: invokevirtual 185	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyUnlock	()V
    //   63: aload_3
    //   64: areturn
    //   65: aload_3
    //   66: iload_2
    //   67: aload_1
    //   68: invokevirtual 123	com/lidroid/xutils/task/Node:getValue	()Ljava/lang/Object;
    //   71: aastore
    //   72: aload_1
    //   73: getfield 120	com/lidroid/xutils/task/Node:next	Lcom/lidroid/xutils/task/Node;
    //   76: astore_1
    //   77: iload_2
    //   78: iconst_1
    //   79: iadd
    //   80: istore_2
    //   81: goto -36 -> 45
    //   84: astore_1
    //   85: aload_0
    //   86: invokevirtual 185	com/lidroid/xutils/task/PriorityObjectBlockingQueue:fullyUnlock	()V
    //   89: aload_1
    //   90: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	91	0	this	PriorityObjectBlockingQueue
    //   0	91	1	paramArrayOfT	T[]
    //   11	70	2	i	int
    //   13	53	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	12	84	finally
    //   14	35	84	finally
    //   35	43	84	finally
    //   49	55	84	finally
    //   65	77	84	finally
  }
  
  void unlink(Node<E> paramNode1, Node<E> paramNode2)
  {
    paramNode1.setValue(null);
    next = next;
    if (last == paramNode1) {
      last = paramNode2;
    }
    if (count.getAndDecrement() == capacity) {
      notFull.signal();
    }
  }
  
  private class Itr
    implements Iterator<E>
  {
    private Node<E> current;
    private E currentElement;
    private Node<E> lastRet;
    
    Itr()
    {
      fullyLock();
      try
      {
        current = head.next;
        if (current != null) {
          currentElement = current.getValue();
        }
        return;
      }
      finally
      {
        fullyUnlock();
      }
    }
    
    private Node<E> nextNode(Node<E> paramNode)
    {
      for (Object localObject = paramNode;; localObject = paramNode)
      {
        paramNode = next;
        if (paramNode == localObject) {
          localObject = head.next;
        }
        do
        {
          do
          {
            return localObject;
            localObject = paramNode;
          } while (paramNode == null);
          localObject = paramNode;
        } while (paramNode.getValue() != null);
      }
    }
    
    public boolean hasNext()
    {
      return current != null;
    }
    
    public E next()
    {
      fullyLock();
      try
      {
        if (current == null) {
          throw new NoSuchElementException();
        }
      }
      finally
      {
        fullyUnlock();
      }
      Object localObject3 = currentElement;
      lastRet = current;
      current = nextNode(current);
      if (current == null) {}
      for (Object localObject2 = null;; localObject2 = current.getValue())
      {
        currentElement = localObject2;
        fullyUnlock();
        return localObject3;
      }
    }
    
    public void remove()
    {
      if (lastRet == null) {
        throw new IllegalStateException();
      }
      fullyLock();
      for (;;)
      {
        try
        {
          Node localNode3 = lastRet;
          lastRet = null;
          Object localObject2 = head;
          Node localNode1 = next;
          if (localNode1 == null) {
            return;
          }
          if (localNode1 == localNode3)
          {
            unlink(localNode1, (Node)localObject2);
            continue;
          }
          localObject2 = localObject1;
        }
        finally
        {
          fullyUnlock();
        }
        Node localNode2 = next;
      }
    }
  }
}
