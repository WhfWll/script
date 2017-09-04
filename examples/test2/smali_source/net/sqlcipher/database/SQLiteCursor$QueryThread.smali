.class final Lnet/sqlcipher/database/SQLiteCursor$QueryThread;
.super Ljava/lang/Object;
.source "SQLiteCursor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sqlcipher/database/SQLiteCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryThread"
.end annotation


# instance fields
.field private final mThreadState:I

.field final synthetic this$0:Lnet/sqlcipher/database/SQLiteCursor;


# direct methods
.method constructor <init>(Lnet/sqlcipher/database/SQLiteCursor;I)V
    .registers 3
    .param p2, "version"    # I

    .prologue
    .line 116
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p2, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->mThreadState:I

    .line 118
    return-void
.end method

.method private sendMessage()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 120
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    iget-object v0, v0, Lnet/sqlcipher/database/SQLiteCursor;->mNotificationHandler:Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;

    if-eqz v0, :cond_15

    .line 121
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    iget-object v0, v0, Lnet/sqlcipher/database/SQLiteCursor;->mNotificationHandler:Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;

    invoke-virtual {v0, v1}, Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;->sendEmptyMessage(I)Z

    .line 122
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    const/4 v1, 0x0

    # setter for: Lnet/sqlcipher/database/SQLiteCursor;->mPendingData:Z
    invoke-static {v0, v1}, Lnet/sqlcipher/database/SQLiteCursor;->access$002(Lnet/sqlcipher/database/SQLiteCursor;Z)Z

    .line 127
    :goto_14
    return-void

    .line 124
    :cond_15
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    # setter for: Lnet/sqlcipher/database/SQLiteCursor;->mPendingData:Z
    invoke-static {v0, v1}, Lnet/sqlcipher/database/SQLiteCursor;->access$002(Lnet/sqlcipher/database/SQLiteCursor;Z)Z

    goto :goto_14
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 130
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    # getter for: Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;
    invoke-static {v3}, Lnet/sqlcipher/database/SQLiteCursor;->access$100(Lnet/sqlcipher/database/SQLiteCursor;)Lnet/sqlcipher/CursorWindow;

    move-result-object v1

    .line 131
    .local v1, "cw":Lnet/sqlcipher/CursorWindow;
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 134
    :goto_f
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    # getter for: Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Lnet/sqlcipher/database/SQLiteCursor;->access$200(Lnet/sqlcipher/database/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 135
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    # getter for: Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I
    invoke-static {v3}, Lnet/sqlcipher/database/SQLiteCursor;->access$300(Lnet/sqlcipher/database/SQLiteCursor;)I

    move-result v3

    iget v4, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->mThreadState:I

    if-eq v3, v4, :cond_2c

    .line 136
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    # getter for: Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Lnet/sqlcipher/database/SQLiteCursor;->access$200(Lnet/sqlcipher/database/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 161
    :goto_2b
    return-void

    .line 140
    :cond_2c
    :try_start_2c
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    # getter for: Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;
    invoke-static {v3}, Lnet/sqlcipher/database/SQLiteCursor;->access$600(Lnet/sqlcipher/database/SQLiteCursor;)Lnet/sqlcipher/database/SQLiteQuery;

    move-result-object v3

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    # getter for: Lnet/sqlcipher/database/SQLiteCursor;->mMaxRead:I
    invoke-static {v4}, Lnet/sqlcipher/database/SQLiteCursor;->access$400(Lnet/sqlcipher/database/SQLiteCursor;)I

    move-result v4

    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    # getter for: Lnet/sqlcipher/database/SQLiteCursor;->mCount:I
    invoke-static {v5}, Lnet/sqlcipher/database/SQLiteCursor;->access$500(Lnet/sqlcipher/database/SQLiteCursor;)I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Lnet/sqlcipher/database/SQLiteQuery;->fillWindow(Lnet/sqlcipher/CursorWindow;II)I

    move-result v0

    .line 142
    .local v0, "count":I
    if-eqz v0, :cond_84

    .line 143
    const/4 v3, -0x1

    if-ne v0, v3, :cond_5f

    .line 144
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    # getter for: Lnet/sqlcipher/database/SQLiteCursor;->mMaxRead:I
    invoke-static {v4}, Lnet/sqlcipher/database/SQLiteCursor;->access$400(Lnet/sqlcipher/database/SQLiteCursor;)I

    move-result v4

    # += operator for: Lnet/sqlcipher/database/SQLiteCursor;->mCount:I
    invoke-static {v3, v4}, Lnet/sqlcipher/database/SQLiteCursor;->access$512(Lnet/sqlcipher/database/SQLiteCursor;I)I

    .line 145
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->sendMessage()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_55} :catch_71
    .catchall {:try_start_2c .. :try_end_55} :catchall_79

    .line 158
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    # getter for: Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Lnet/sqlcipher/database/SQLiteCursor;->access$200(Lnet/sqlcipher/database/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_f

    .line 147
    :cond_5f
    :try_start_5f
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    # setter for: Lnet/sqlcipher/database/SQLiteCursor;->mCount:I
    invoke-static {v3, v0}, Lnet/sqlcipher/database/SQLiteCursor;->access$502(Lnet/sqlcipher/database/SQLiteCursor;I)I

    .line 148
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->sendMessage()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_67} :catch_71
    .catchall {:try_start_5f .. :try_end_67} :catchall_79

    .line 158
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    # getter for: Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Lnet/sqlcipher/database/SQLiteCursor;->access$200(Lnet/sqlcipher/database/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    .end local v0    # "count":I
    :goto_6d
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2b

    .line 154
    :catch_71
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    # getter for: Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Lnet/sqlcipher/database/SQLiteCursor;->access$200(Lnet/sqlcipher/database/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    goto :goto_6d

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_79
    move-exception v3

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    # getter for: Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v4}, Lnet/sqlcipher/database/SQLiteCursor;->access$200(Lnet/sqlcipher/database/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .restart local v0    # "count":I
    :cond_84
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    # getter for: Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Lnet/sqlcipher/database/SQLiteCursor;->access$200(Lnet/sqlcipher/database/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    goto :goto_6d
.end method
