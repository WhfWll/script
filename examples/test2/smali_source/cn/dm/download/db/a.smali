.class public final Lcn/dm/download/db/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static ac:Lcn/dm/download/db/a; = null

.field private static ae:Ljava/lang/String; = "dm_downloadTool.db"

.field private static af:I = 0x1

.field private static ag:Ljava/lang/String; = "download_app_tab"


# instance fields
.field private ad:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcn/dm/download/db/a;->ac:Lcn/dm/download/db/a;

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 50
    const-string v0, "dm_downloadTool.db"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 14
    iput-object v2, p0, Lcn/dm/download/db/a;->ad:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    invoke-virtual {p0}, Lcn/dm/download/db/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/db/a;->ad:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    iput-object p1, p0, Lcn/dm/download/db/a;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcn/dm/download/db/a;
    .registers 3

    .prologue
    .line 42
    const-class v1, Lcn/dm/download/db/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcn/dm/download/db/a;->ac:Lcn/dm/download/db/a;

    if-nez v0, :cond_e

    .line 43
    new-instance v0, Lcn/dm/download/db/a;

    invoke-direct {v0, p0}, Lcn/dm/download/db/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/dm/download/db/a;->ac:Lcn/dm/download/db/a;

    .line 46
    :cond_e
    sget-object v0, Lcn/dm/download/db/a;->ac:Lcn/dm/download/db/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private p()Landroid/content/Context;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcn/dm/download/db/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcn/dm/download/db/a;->ad:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14

    .prologue
    const/4 v2, 0x0

    .line 76
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 77
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcn/dm/download/db/a;->ad:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, p3

    move-object v4, p4

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 80
    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 7

    .prologue
    .line 84
    iget-object v0, p0, Lcn/dm/download/db/a;->ad:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 85
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    .line 86
    const/4 v0, 0x0

    .line 88
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public final delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcn/dm/download/db/a;->ad:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 61
    const-string v0, "CREATE TABLE IF NOT EXISTS download_app_tab (_app_id long PRIMARY KEY,_app_name VARCHAR,_app_packagename VARCHAR,_app_download_url VARCHAR,_app_logo_url VARCHAR,_app_size long,_app_versioncode int,_app_isupdate int,_app_tr VARCHAR,_app_refer VARCHAR,_app_position int,_app_vender VARCHAR,_app_versionname VARCHAR,_app_sid VARCHAR,_app_download_status int)"

    .line 67
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .prologue
    .line 73
    return-void
.end method

.method public final update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcn/dm/download/db/a;->ad:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
