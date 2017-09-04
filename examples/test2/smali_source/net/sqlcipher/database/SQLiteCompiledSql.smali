.class Lnet/sqlcipher/database/SQLiteCompiledSql;
.super Ljava/lang/Object;
.source "SQLiteCompiledSql.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteCompiledSql"


# instance fields
.field mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

.field private mInUse:Z

.field private mSqlStmt:Ljava/lang/String;

.field private mStackTrace:Ljava/lang/Throwable;

.field nHandle:I

.field nStatement:I


# direct methods
.method constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    .registers 6
    .param p1, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->nHandle:I

    .line 47
    iput v0, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->nStatement:I

    .line 50
    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    .line 54
    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mInUse:Z

    .line 57
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_38

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_38
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 61
    iput-object p2, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    .line 62
    new-instance v0, Lnet/sqlcipher/database/DatabaseObjectNotClosedException;

    invoke-direct {v0}, Lnet/sqlcipher/database/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v0}, Lnet/sqlcipher/database/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    .line 63
    iget v0, p1, Lnet/sqlcipher/database/SQLiteDatabase;->mNativeHandle:I

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->nHandle:I

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lnet/sqlcipher/database/SQLiteCompiledSql;->compile(Ljava/lang/String;Z)V

    .line 65
    return-void
.end method

.method private compile(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "forceCompilation"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2d
    if-eqz p2, :cond_3c

    .line 87
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 91
    :try_start_34
    invoke-direct {p0, p1}, Lnet/sqlcipher/database/SQLiteCompiledSql;->native_compile(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3d

    .line 93
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 96
    :cond_3c
    return-void

    .line 93
    :catchall_3d
    move-exception v0

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method private final native native_compile(Ljava/lang/String;)V
.end method

.method private final native native_finalize()V
.end method


# virtual methods
.method declared-synchronized acquire()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 119
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mInUse:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_31

    if-eqz v1, :cond_9

    .line 121
    const/4 v0, 0x0

    .line 127
    :cond_7
    :goto_7
    monitor-exit p0

    return v0

    .line 123
    :cond_9
    const/4 v1, 0x1

    :try_start_a
    iput-boolean v1, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mInUse:Z

    .line 124
    sget-boolean v1, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz v1, :cond_7

    .line 125
    const-string v1, "SQLiteCompiledSql"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquired DbObj (id#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") from DB cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_31

    goto :goto_7

    .line 119
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v1, 0x64

    .line 143
    :try_start_2
    iget v2, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->nStatement:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_5c

    if-nez v2, :cond_a

    .line 154
    :goto_6
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 156
    return-void

    .line 145
    :cond_a
    :try_start_a
    sget-boolean v2, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz v2, :cond_2e

    .line 146
    const-string v2, "SQLiteCompiledSql"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "** warning ** Finalized DbObj (id#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_2e
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 149
    .local v0, "len":I
    const-string v2, "SQLiteCompiledSql"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Releasing statement in a finalizer. Please ensure that you explicitly call close() on your cursor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    const/4 v5, 0x0

    if-le v0, v1, :cond_47

    move v0, v1

    .end local v0    # "len":I
    :cond_47
    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v2, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_5b
    .catchall {:try_start_a .. :try_end_5b} :catchall_5c

    goto :goto_6

    .line 154
    :catchall_5c
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method declared-synchronized release()V
    .registers 4

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz v0, :cond_25

    .line 132
    const-string v0, "SQLiteCompiledSql"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Released DbObj (id#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") back to DB cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mInUse:Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 135
    monitor-exit p0

    return-void

    .line 131
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method releaseSqlStatement()V
    .registers 4

    .prologue
    .line 101
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->nStatement:I

    if-eqz v0, :cond_38

    .line 102
    sget-boolean v0, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz v0, :cond_28

    .line 103
    const-string v0, "SQLiteCompiledSql"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closed and deallocated DbObj (id#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_28
    :try_start_28
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 107
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCompiledSql;->native_finalize()V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->nStatement:I
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_39

    .line 110
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 113
    :cond_38
    return-void

    .line 110
    :catchall_39
    move-exception v0

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCompiledSql;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method
