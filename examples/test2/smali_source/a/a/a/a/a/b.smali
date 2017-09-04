.class La/a/a/a/a/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/a/b$b;,
        La/a/a/a/a/b$a;
    }
.end annotation


# static fields
.field protected static final b:I = 0x1

.field protected static final c:I = 0x0

.field protected static final d:J = 0x0L

.field protected static final e:J = -0x1L

.field protected static final f:I = 0x0

.field protected static final g:I = 0x1

.field protected static final h:I = 0x2

.field protected static final i:I = 0x3

.field protected static final j:I = 0x0

.field protected static final k:I = 0x1

.field protected static final l:I = 0x2

.field protected static final m:I = 0x3

.field protected static final n:I = 0x4

.field private static final o:I = 0x1

.field private static final p:Ljava/lang/String; = "Cache.db"

.field private static r:La/a/a/a/a/b; = null

.field private static final s:Ljava/lang/String; = " TEXT"

.field private static final t:Ljava/lang/String; = " LONG"

.field private static final u:Ljava/lang/String; = " INTEGER"

.field private static final v:Ljava/lang/String; = ","

.field private static final w:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS resourceGroup(_id INTEGER PRIMARY KEY,Rgid TEXT,Expires LONG,UseDate LONG,Ppid TEXT,Tracker TEXT,EventTrackerURL TEXT,State INTEGER );"

.field private static final x:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS resource(_id INTEGER PRIMARY KEY,Ridd TEXT,Rgid TEXT,Type INTEGER,ResourceUrl TEXT,Path TEXT,DownState INTEGER,ContentLength LONG,CreatDate LONG,Width INTEGER,Height INTEGER );"

.field private static final y:Ljava/lang/String; = "DROP TABLE IF EXISTS resourceGroup"

.field private static final z:Ljava/lang/String; = "DROP TABLE IF EXISTS resource"


# instance fields
.field a:Lcn/domob/android/i/f;

.field private q:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, La/a/a/a/a/b;->r:La/a/a/a/a/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cache.db"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 15
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, La/a/a/a/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/a/a/b;->a:Lcn/domob/android/i/f;

    .line 19
    iput-object v3, p0, La/a/a/a/a/b;->q:Landroid/database/sqlite/SQLiteDatabase;

    .line 110
    :try_start_1a
    invoke-virtual {p0}, La/a/a/a/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/b;->q:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_20} :catch_21

    .line 114
    :goto_20
    return-void

    .line 111
    :catch_21
    move-exception v0

    .line 112
    iget-object v1, p0, La/a/a/a/a/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method protected static declared-synchronized a(Landroid/content/Context;)La/a/a/a/a/b;
    .registers 3

    .prologue
    .line 117
    const-class v1, La/a/a/a/a/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, La/a/a/a/a/b;->r:La/a/a/a/a/b;

    if-eqz v0, :cond_f

    sget-object v0, La/a/a/a/a/b;->r:La/a/a/a/a/b;

    invoke-virtual {v0}, La/a/a/a/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_16

    .line 118
    :cond_f
    new-instance v0, La/a/a/a/a/b;

    invoke-direct {v0, p0}, La/a/a/a/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, La/a/a/a/a/b;->r:La/a/a/a/a/b;

    .line 120
    :cond_16
    sget-object v0, La/a/a/a/a/b;->r:La/a/a/a/a/b;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v1

    return-object v0

    .line 117
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 232
    invoke-virtual {p0}, La/a/a/a/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 233
    const/4 v0, -0x1

    .line 236
    :goto_7
    return v0

    .line 235
    :cond_8
    iget-object v0, p0, La/a/a/a/a/b;->q:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14

    .prologue
    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 169
    invoke-virtual {p0}, La/a/a/a/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v8

    .line 186
    :cond_9
    :goto_9
    return v0

    .line 174
    :cond_a
    :try_start_a
    iget-object v0, p0, La/a/a/a/a/b;->q:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_3d
    .catchall {:try_start_a .. :try_end_1d} :catchall_50

    move-result-object v1

    .line 175
    if-eqz v1, :cond_30

    .line 176
    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_60
    .catchall {:try_start_20 .. :try_end_23} :catchall_5d

    move-result v0

    .line 182
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 183
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 182
    :cond_30
    if-eqz v1, :cond_3b

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 183
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3b
    :goto_3b
    move v0, v8

    .line 186
    goto :goto_9

    .line 179
    :catch_3d
    move-exception v0

    move-object v1, v9

    .line 180
    :goto_3f
    :try_start_3f
    iget-object v2, p0, La/a/a/a/a/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_5d

    .line 182
    if-eqz v1, :cond_3b

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 183
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3b

    .line 182
    :catchall_50
    move-exception v0

    :goto_51
    if-eqz v9, :cond_5c

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 183
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5c
    throw v0

    .line 182
    :catchall_5d
    move-exception v0

    move-object v9, v1

    goto :goto_51

    .line 179
    :catch_60
    move-exception v0

    goto :goto_3f
.end method

.method protected a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16

    .prologue
    const/4 v5, 0x0

    .line 221
    invoke-virtual {p0}, La/a/a/a/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 227
    :goto_7
    return-object v5

    .line 224
    :cond_8
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 225
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, La/a/a/a/a/b;->q:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_7
.end method

.method protected a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 240
    invoke-virtual {p0}, La/a/a/a/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 246
    :goto_6
    return-void

    .line 243
    :cond_7
    const-string v0, "Rgid= ?"

    .line 244
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 245
    iget-object v2, p0, La/a/a/a/a/b;->q:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "resourceGroup"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6
.end method

.method protected a()Z
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, La/a/a/a/a/b;->q:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_16

    iget-object v0, p0, La/a/a/a/a/b;->q:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, La/a/a/a/a/b;->q:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_16

    .line 147
    const/4 v0, 0x1

    .line 150
    :goto_15
    return v0

    .line 149
    :cond_16
    iget-object v0, p0, La/a/a/a/a/b;->a:Lcn/domob/android/i/f;

    const-string v1, "freq database is not available"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected a(La/a/a/a/a/c;)Z
    .registers 6

    .prologue
    .line 190
    invoke-virtual {p0}, La/a/a/a/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 191
    const/4 v0, 0x0

    .line 205
    :goto_7
    return v0

    .line 193
    :cond_8
    iget-object v0, p0, La/a/a/a/a/b;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert a new data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 194
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 195
    const-string v1, "Ridd"

    invoke-virtual {p1}, La/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "Rgid"

    invoke-virtual {p1}, La/a/a/a/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "Type"

    invoke-virtual {p1}, La/a/a/a/a/c;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    const-string v1, "ResourceUrl"

    invoke-virtual {p1}, La/a/a/a/a/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v1, "Path"

    invoke-virtual {p1}, La/a/a/a/a/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v1, "DownState"

    invoke-virtual {p1}, La/a/a/a/a/c;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string v1, "ContentLength"

    invoke-virtual {p1}, La/a/a/a/a/c;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    const-string v1, "CreatDate"

    invoke-virtual {p1}, La/a/a/a/a/c;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    const-string v1, "Width"

    invoke-virtual {p1}, La/a/a/a/a/c;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v1, "Height"

    invoke-virtual {p1}, La/a/a/a/a/c;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    const-string v1, "resource"

    invoke-virtual {p0, v1, v0}, La/a/a/a/a/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    goto/16 :goto_7
.end method

.method protected a(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 7

    .prologue
    .line 210
    iget-object v0, p0, La/a/a/a/a/b;->q:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 211
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2b

    .line 212
    iget-object v0, p0, La/a/a/a/a/b;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert: failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    .line 216
    :goto_2a
    return v0

    .line 215
    :cond_2b
    iget-object v0, p0, La/a/a/a/a/b;->a:Lcn/domob/android/i/f;

    const-string v1, "insert successfully"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x1

    goto :goto_2a
.end method

.method protected b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-virtual {p0}, La/a/a/a/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 161
    :goto_7
    return-void

    .line 158
    :cond_8
    iget-object v0, p0, La/a/a/a/a/b;->a:Lcn/domob/android/i/f;

    const-string v1, "empty database"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, La/a/a/a/a/b;->q:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "resourceGroup"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, La/a/a/a/a/b;->q:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "resource"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_7
.end method

.method protected b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 267
    invoke-virtual {p0}, La/a/a/a/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 273
    :goto_6
    return-void

    .line 270
    :cond_7
    const-string v0, "_id = ?"

    .line 271
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 272
    iget-object v2, p0, La/a/a/a/a/b;->q:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "resource"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 126
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS resourceGroup(_id INTEGER PRIMARY KEY,Rgid TEXT,Expires LONG,UseDate LONG,Ppid TEXT,Tracker TEXT,EventTrackerURL TEXT,State INTEGER );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    const-string v0, "CREATE TABLE IF NOT EXISTS resource(_id INTEGER PRIMARY KEY,Ridd TEXT,Rgid TEXT,Type INTEGER,ResourceUrl TEXT,Path TEXT,DownState INTEGER,ContentLength LONG,CreatDate LONG,Width INTEGER,Height INTEGER );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_a} :catch_b

    .line 131
    :goto_a
    return-void

    .line 128
    :catch_b
    move-exception v0

    .line 129
    iget-object v1, p0, La/a/a/a/a/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 137
    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS resourceGroup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    const-string v0, "DROP TABLE IF EXISTS resource"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_a} :catch_e

    .line 142
    :goto_a
    invoke-virtual {p0, p1}, La/a/a/a/a/b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 143
    return-void

    .line 139
    :catch_e
    move-exception v0

    .line 140
    iget-object v1, p0, La/a/a/a/a/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_a
.end method
