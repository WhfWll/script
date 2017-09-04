.class Lcn/domob/android/e/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/e/b$a;,
        Lcn/domob/android/e/b$b;
    }
.end annotation


# static fields
.field private static final b:I = 0x1

.field private static final c:Ljava/lang/String; = "Freq.db"

.field private static e:Lcn/domob/android/e/b; = null

.field private static final f:Ljava/lang/String; = " TEXT"

.field private static final g:Ljava/lang/String; = " LONG"

.field private static final h:Ljava/lang/String; = " INTEGER"

.field private static final i:Ljava/lang/String; = ","

.field private static final j:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS freq(_id INTEGER PRIMARY KEY,frequency_id TEXT,imp_times INTEGER,imp_limit_times INTEGER,click_times INTEGER,click_limit_times INTEGER,end_time LONG,update_time LONG );"

.field private static final k:Ljava/lang/String; = "DROP TABLE IF EXISTS freq"


# instance fields
.field a:Lcn/domob/android/i/f;

.field private d:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/e/b;->e:Lcn/domob/android/e/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Freq.db"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 18
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/e/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    .line 23
    iput-object v3, p0, Lcn/domob/android/e/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    :try_start_1a
    invoke-virtual {p0}, Lcn/domob/android/e/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/e/b;->d:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_20} :catch_21

    .line 66
    :goto_20
    return-void

    .line 63
    :catch_21
    move-exception v0

    .line 64
    iget-object v1, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method protected static declared-synchronized a(Landroid/content/Context;)Lcn/domob/android/e/b;
    .registers 3

    .prologue
    .line 69
    const-class v1, Lcn/domob/android/e/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcn/domob/android/e/b;->e:Lcn/domob/android/e/b;

    if-eqz v0, :cond_f

    sget-object v0, Lcn/domob/android/e/b;->e:Lcn/domob/android/e/b;

    invoke-direct {v0}, Lcn/domob/android/e/b;->e()Z

    move-result v0

    if-nez v0, :cond_16

    .line 70
    :cond_f
    new-instance v0, Lcn/domob/android/e/b;

    invoke-direct {v0, p0}, Lcn/domob/android/e/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/domob/android/e/b;->e:Lcn/domob/android/e/b;

    .line 72
    :cond_16
    sget-object v0, Lcn/domob/android/e/b;->e:Lcn/domob/android/e/b;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcn/domob/android/e/b$a;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-direct {p0}, Lcn/domob/android/e/b;->e()Z

    move-result v1

    if-nez v1, :cond_8

    .line 220
    :goto_7
    return v0

    .line 205
    :cond_8
    iget-object v1, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert a new data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/domob/android/e/b$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 206
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 207
    const-string v2, "frequency_id"

    invoke-virtual {p1}, Lcn/domob/android/e/b$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v2, "imp_times"

    invoke-virtual {p1}, Lcn/domob/android/e/b$a;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    const-string v2, "imp_limit_times"

    invoke-virtual {p1}, Lcn/domob/android/e/b$a;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const-string v2, "click_times"

    invoke-virtual {p1}, Lcn/domob/android/e/b$a;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v2, "click_limit_times"

    invoke-virtual {p1}, Lcn/domob/android/e/b$a;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const-string v2, "end_time"

    invoke-virtual {p1}, Lcn/domob/android/e/b$a;->f()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    const-string v2, "update_time"

    invoke-virtual {p1}, Lcn/domob/android/e/b$a;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 214
    iget-object v2, p0, Lcn/domob/android/e/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "freq"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 215
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_ad

    .line 216
    iget-object v2, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insert: failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 219
    :cond_ad
    iget-object v0, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    const-string v1, "insert successfully"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x1

    goto/16 :goto_7
.end method

.method private c(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 352
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 353
    const-string v0, "("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 354
    :goto_c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_51

    .line 355
    const/4 v2, 0x0

    .line 357
    :try_start_13
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_16} :catch_4a

    move-result-object v2

    .line 361
    :goto_17
    if-eqz v2, :cond_47

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_47

    .line 362
    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 363
    if-eqz v2, :cond_47

    array-length v4, v2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_47

    .line 364
    aget-object v2, v2, v1

    .line 365
    const-string v4, "frequency_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_47

    .line 369
    const-string v2, " or "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 358
    :catch_4a
    move-exception v4

    .line 359
    iget-object v5, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v5, v4}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_17

    .line 374
    :cond_51
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Z
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcn/domob/android/e/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcn/domob/android/e/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcn/domob/android/e/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_16

    .line 159
    const/4 v0, 0x1

    .line 162
    :goto_15
    return v0

    .line 161
    :cond_16
    iget-object v0, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    const-string v1, "freq database is not available"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method protected a(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13

    .prologue
    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 180
    invoke-direct {p0}, Lcn/domob/android/e/b;->e()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v8

    .line 197
    :cond_9
    :goto_9
    return v0

    .line 185
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcn/domob/android/e/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "freq"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_3e
    .catchall {:try_start_a .. :try_end_1e} :catchall_51

    move-result-object v1

    .line 186
    if-eqz v1, :cond_31

    .line 187
    :try_start_21
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_61
    .catchall {:try_start_21 .. :try_end_24} :catchall_5e

    move-result v0

    .line 193
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 194
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 193
    :cond_31
    if-eqz v1, :cond_3c

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 194
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3c
    :goto_3c
    move v0, v8

    .line 197
    goto :goto_9

    .line 190
    :catch_3e
    move-exception v0

    move-object v1, v9

    .line 191
    :goto_40
    :try_start_40
    iget-object v2, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_5e

    .line 193
    if-eqz v1, :cond_3c

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 194
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3c

    .line 193
    :catchall_51
    move-exception v0

    :goto_52
    if-eqz v9, :cond_5d

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 194
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5d
    throw v0

    .line 193
    :catchall_5e
    move-exception v0

    move-object v9, v1

    goto :goto_52

    .line 190
    :catch_61
    move-exception v0

    goto :goto_40
.end method

.method protected a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 400
    invoke-direct {p0}, Lcn/domob/android/e/b;->e()Z

    move-result v0

    if-nez v0, :cond_8

    .line 408
    :goto_7
    return-object v5

    .line 404
    :cond_8
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 405
    const-string v1, "freq"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcn/domob/android/e/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_7
.end method

.method protected a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-direct {p0}, Lcn/domob/android/e/b;->e()Z

    move-result v0

    if-nez v0, :cond_8

    .line 172
    :goto_7
    return-void

    .line 170
    :cond_8
    iget-object v0, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    const-string v1, "empty database"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcn/domob/android/e/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "freq"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_7
.end method

.method protected a(Lorg/json/JSONArray;)V
    .registers 6

    .prologue
    .line 309
    iget-object v0, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    const-string v1, "imp Times of current ad Add One"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 310
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcn/domob/android/e/b;->e()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 311
    :cond_15
    iget-object v0, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    const-string v1, "freqJSONArray is not available"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 326
    :goto_1c
    return-void

    .line 314
    :cond_1d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 315
    const-string v1, "update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "freq"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "imp_times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "imp_times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " + 1, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "update_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0, p1}, Lcn/domob/android/e/b;->c(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "end_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 322
    :try_start_90
    iget-object v1, p0, Lcn/domob/android/e/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_95
    .catch Landroid/database/SQLException; {:try_start_90 .. :try_end_95} :catch_96

    goto :goto_1c

    .line 323
    :catch_96
    move-exception v0

    .line 324
    iget-object v1, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method protected a(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 379
    invoke-direct {p0}, Lcn/domob/android/e/b;->e()Z

    move-result v2

    if-nez v2, :cond_9

    .line 386
    :goto_8
    return v0

    .line 382
    :cond_9
    iget-object v2, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleted from DB which freqId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 383
    const-string v2, "frequency_id= ?"

    .line 384
    new-array v3, v1, [Ljava/lang/String;

    aput-object p1, v3, v0

    .line 385
    iget-object v0, p0, Lcn/domob/android/e/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "freq"

    invoke-virtual {v0, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v1

    .line 386
    goto :goto_8
.end method

.method protected a(Ljava/lang/String;II)Z
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 286
    invoke-direct {p0}, Lcn/domob/android/e/b;->e()Z

    move-result v2

    if-nez v2, :cond_9

    .line 302
    :goto_8
    return v0

    .line 289
    :cond_9
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 290
    const-string v3, "imp_limit_times"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    const-string v3, "click_limit_times"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    iget-object v3, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update DB, and the updated content is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 293
    const-string v3, "frequency_id = ? and end_time > ?"

    .line 294
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 295
    iget-object v5, p0, Lcn/domob/android/e/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "freq"

    invoke-virtual {v5, v6, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 296
    if-ne v2, v1, :cond_60

    .line 297
    iget-object v0, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    const-string v2, "update BD successfully"

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    move v0, v1

    .line 298
    goto :goto_8

    .line 300
    :cond_60
    iget-object v1, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update DB failed and the affected row number is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_8
.end method

.method protected a(Ljava/lang/String;IIJ)Z
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 274
    new-instance v0, Lcn/domob/android/e/b$a;

    invoke-direct {v0, p0}, Lcn/domob/android/e/b$a;-><init>(Lcn/domob/android/e/b;)V

    .line 275
    invoke-virtual {v0, p1}, Lcn/domob/android/e/b$a;->a(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0, v1}, Lcn/domob/android/e/b$a;->a(I)V

    .line 277
    invoke-virtual {v0, p2}, Lcn/domob/android/e/b$a;->b(I)V

    .line 278
    invoke-virtual {v0, v1}, Lcn/domob/android/e/b$a;->c(I)V

    .line 279
    invoke-virtual {v0, p3}, Lcn/domob/android/e/b$a;->d(I)V

    .line 280
    invoke-virtual {v0, p4, p5}, Lcn/domob/android/e/b$a;->a(J)V

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/e/b$a;->b(J)V

    .line 282
    invoke-direct {p0, v0}, Lcn/domob/android/e/b;->a(Lcn/domob/android/e/b$a;)Z

    move-result v0

    return v0
.end method

.method protected b()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 229
    invoke-direct {p0}, Lcn/domob/android/e/b;->e()Z

    move-result v0

    if-nez v0, :cond_a

    .line 230
    const-string v0, "can\'t fetch db"

    .line 269
    :cond_9
    :goto_9
    return-object v0

    .line 233
    :cond_a
    const-string v9, ""

    .line 237
    :try_start_c
    iget-object v0, p0, Lcn/domob/android/e/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "freq"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "*"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_fe
    .catchall {:try_start_c .. :try_end_20} :catchall_ee

    move-result-object v1

    .line 239
    if-eqz v1, :cond_e2

    .line 241
    :try_start_23
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 243
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-object v0, v9

    :goto_2a
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_d5

    .line 244
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "tianxiao debug for db cursor move"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    new-instance v2, Lcn/domob/android/e/b$a;

    invoke-direct {v2, p0}, Lcn/domob/android/e/b$a;-><init>(Lcn/domob/android/e/b;)V

    .line 247
    const-string v3, "frequency_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/e/b$a;->a(Ljava/lang/String;)V

    .line 248
    const-string v3, "imp_times"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/domob/android/e/b$a;->a(I)V

    .line 249
    const-string v3, "imp_limit_times"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/domob/android/e/b$a;->b(I)V

    .line 250
    const-string v3, "click_times"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/domob/android/e/b$a;->c(I)V

    .line 251
    const-string v3, "click_limit_times"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/domob/android/e/b$a;->d(I)V

    .line 252
    const-string v3, "end_time"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcn/domob/android/e/b$a;->a(J)V

    .line 253
    const-string v3, "update_time"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcn/domob/android/e/b$a;->b(J)V

    .line 255
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lcn/domob/android/e/b$a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcn/domob/android/e/b$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "            "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_be} :catch_c0
    .catchall {:try_start_23 .. :try_end_be} :catchall_fc

    goto/16 :goto_2a

    .line 261
    :catch_c0
    move-exception v0

    .line 262
    :goto_c1
    :try_start_c1
    iget-object v2, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_c6
    .catchall {:try_start_c1 .. :try_end_c6} :catchall_fc

    .line 264
    if-eqz v1, :cond_d1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d1

    .line 265
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_d1
    :goto_d1
    const-string v0, "errors "

    goto/16 :goto_9

    .line 264
    :cond_d5
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 265
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9

    .line 264
    :cond_e2
    if-eqz v1, :cond_d1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d1

    .line 265
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_d1

    .line 264
    :catchall_ee
    move-exception v0

    move-object v1, v8

    :goto_f0
    if-eqz v1, :cond_fb

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_fb

    .line 265
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_fb
    throw v0

    .line 264
    :catchall_fc
    move-exception v0

    goto :goto_f0

    .line 261
    :catch_fe
    move-exception v0

    move-object v1, v8

    goto :goto_c1
.end method

.method protected b(Lorg/json/JSONArray;)V
    .registers 6

    .prologue
    .line 332
    iget-object v0, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    const-string v1, "click Times of current ad Add One"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 333
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcn/domob/android/e/b;->e()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 334
    :cond_15
    iget-object v0, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    const-string v1, "freqJSONArray is not available"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 349
    :goto_1c
    return-void

    .line 337
    :cond_1d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 338
    const-string v1, "update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "freq"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "click_times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "click_times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " + 1, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "update_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0, p1}, Lcn/domob/android/e/b;->c(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "end_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 345
    :try_start_90
    iget-object v1, p0, Lcn/domob/android/e/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_95
    .catch Landroid/database/SQLException; {:try_start_90 .. :try_end_95} :catch_96

    goto :goto_1c

    .line 346
    :catch_96
    move-exception v0

    .line 347
    iget-object v1, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method protected c()V
    .registers 7

    .prologue
    .line 390
    invoke-direct {p0}, Lcn/domob/android/e/b;->e()Z

    move-result v0

    if-nez v0, :cond_7

    .line 397
    :goto_6
    return-void

    .line 393
    :cond_7
    iget-object v0, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    const-string v1, "delete expired data from DB"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 394
    const-string v0, "end_time < ?"

    .line 395
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 396
    iget-object v2, p0, Lcn/domob/android/e/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "freq"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6
.end method

.method protected d()V
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcn/domob/android/e/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcn/domob/android/e/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 416
    iget-object v0, p0, Lcn/domob/android/e/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 418
    :cond_11
    sget-object v0, Lcn/domob/android/e/b;->e:Lcn/domob/android/e/b;

    if-eqz v0, :cond_18

    .line 419
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/e/b;->e:Lcn/domob/android/e/b;

    .line 421
    :cond_18
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 78
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS freq(_id INTEGER PRIMARY KEY,frequency_id TEXT,imp_times INTEGER,imp_limit_times INTEGER,click_times INTEGER,click_limit_times INTEGER,end_time LONG,update_time LONG );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_6

    .line 82
    :goto_5
    return-void

    .line 79
    :catch_6
    move-exception v0

    .line 80
    iget-object v1, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 88
    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS freq"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_9

    .line 92
    :goto_5
    invoke-virtual {p0, p1}, Lcn/domob/android/e/b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    return-void

    .line 89
    :catch_9
    move-exception v0

    .line 90
    iget-object v1, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_5
.end method
