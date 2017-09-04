.class public Lcn/dm/download/db/c;
.super Ljava/lang/Object;
.source "DownloadDaoHelper.java"


# static fields
.field private static f:Lcn/dm/download/util/b;


# instance fields
.field private av:Lcn/dm/download/db/a;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcn/dm/download/util/b;

    const-class v1, Lcn/dm/download/db/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dm/download/util/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dm/download/db/c;->f:Lcn/dm/download/util/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/dm/download/db/c;->mContext:Landroid/content/Context;

    .line 20
    iget-object v0, p0, Lcn/dm/download/db/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/dm/download/db/a;->b(Landroid/content/Context;)Lcn/dm/download/db/a;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/db/c;->av:Lcn/dm/download/db/a;

    .line 21
    return-void
.end method

.method private b(J)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 114
    const/4 v2, 0x0

    .line 116
    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/dm/download/db/c;->c(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v2

    .line 117
    sget-object v1, Lcn/dm/download/db/c;->f:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "crs count and columncount is:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  ,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_3b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_47

    move-result v1

    if-nez v1, :cond_34

    .line 125
    if-eqz v2, :cond_33

    .line 126
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_33
    :goto_33
    return v0

    .line 125
    :cond_34
    if-eqz v2, :cond_39

    .line 126
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_39
    const/4 v0, 0x1

    goto :goto_33

    .line 122
    :catch_3b
    move-exception v1

    .line 123
    :try_start_3c
    sget-object v3, Lcn/dm/download/db/c;->f:Lcn/dm/download/util/b;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_47

    .line 125
    if-eqz v2, :cond_33

    .line 126
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_33

    .line 124
    :catchall_47
    move-exception v0

    .line 125
    if-eqz v2, :cond_4d

    .line 126
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_4d
    throw v0
.end method

.method private c(Ljava/lang/Long;)Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 99
    const/4 v0, 0x1

    :try_start_2
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 100
    iget-object v0, p0, Lcn/dm/download/db/c;->av:Lcn/dm/download/db/a;

    const-string v1, "download_app_tab"

    const/4 v2, 0x0

    const-string v3, "_app_id=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/dm/download/db/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_18

    move-result-object v0

    .line 104
    :goto_17
    return-object v0

    .line 101
    :catch_18
    move-exception v0

    .line 102
    sget-object v1, Lcn/dm/download/db/c;->f:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get getDownloadAppInfo failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v6

    .line 104
    goto :goto_17
.end method

.method private e(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 6

    .prologue
    .line 54
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 55
    const-string v1, "_app_id"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 56
    const-string v1, "_app_name"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "_app_packagename"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "_app_download_status"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    const-string v1, "_app_size"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 60
    const-string v1, "_app_download_url"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "_app_logo_url"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "_app_versioncode"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    const-string v1, "_app_isupdate"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getIsUpdate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v1, "_app_tr"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getTr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "_app_vender"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getVendor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "_app_versionname"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "_app_refer"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getRefer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "_app_position"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v1, "_app_sid"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :try_start_a4
    iget-object v1, p0, Lcn/dm/download/db/c;->av:Lcn/dm/download/db/a;

    const-string v2, "download_app_tab"

    invoke-virtual {v1, v2, v0}, Lcn/dm/download/db/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 72
    sget-object v0, Lcn/dm/download/db/c;->f:Lcn/dm/download/util/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u63d2\u5165\u6570\u636e\uff0c\u4e0b\u8f7d\u72b6\u6001\u4e3a\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  ,\u662f\u5426\u771f\u7684\u63d2\u5165\u4e86\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcn/dm/download/db/c;->b(J)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_cd
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_a4 .. :try_end_cd} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_cd} :catch_e6

    .line 79
    :goto_cd
    return-void

    .line 74
    :catch_ce
    move-exception v0

    sget-object v0, Lcn/dm/download/db/c;->f:Lcn/dm/download/util/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "the "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is already exist, insert failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cd

    .line 75
    :catch_e6
    move-exception v0

    .line 76
    sget-object v1, Lcn/dm/download/db/c;->f:Lcn/dm/download/util/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_cd
.end method


# virtual methods
.method public final a(J)V
    .registers 8

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcn/dm/download/db/c;->av:Lcn/dm/download/db/a;

    const-string v1, "download_app_tab"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_app_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/dm/download/db/a;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 85
    sget-object v1, Lcn/dm/download/db/c;->f:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5220\u9664\u6570\u636e\u6210\u529f\uff0cdelete number "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    .line 89
    :goto_24
    return-void

    .line 87
    :catch_25
    move-exception v0

    sget-object v0, Lcn/dm/download/db/c;->f:Lcn/dm/download/util/b;

    goto :goto_24
.end method

.method public final f(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 7

    .prologue
    .line 138
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_app_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    const-string v2, "_app_download_status"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    const-string v2, "_app_versioncode"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v2, "_app_isupdate"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getIsUpdate()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    iget-object v2, p0, Lcn/dm/download/db/c;->av:Lcn/dm/download/db/a;

    const-string v3, "download_app_tab"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lcn/dm/download/db/a;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 144
    sget-object v1, Lcn/dm/download/db/c;->f:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u66f4\u65b0\u6570\u636e\u5e93\u4e0b\u8f7d\u72b6\u6001\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ,appid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ,result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    return-void
.end method

.method public final g(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 6

    .prologue
    .line 151
    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcn/dm/download/db/c;->b(J)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 152
    invoke-virtual {p0, p1}, Lcn/dm/download/db/c;->f(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 156
    :goto_d
    return-void

    .line 154
    :cond_e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_app_id"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "_app_name"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_app_packagename"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_app_download_status"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "_app_size"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "_app_download_url"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_app_logo_url"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_app_versioncode"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "_app_isupdate"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getIsUpdate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "_app_tr"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getTr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_app_vender"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getVendor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_app_versionname"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_app_refer"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getRefer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_app_position"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "_app_sid"

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b2
    iget-object v1, p0, Lcn/dm/download/db/c;->av:Lcn/dm/download/db/a;

    const-string v2, "download_app_tab"

    invoke-virtual {v1, v2, v0}, Lcn/dm/download/db/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z

    sget-object v0, Lcn/dm/download/db/c;->f:Lcn/dm/download/util/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u63d2\u5165\u6570\u636e\uff0c\u4e0b\u8f7d\u72b6\u6001\u4e3a\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  ,\u662f\u5426\u771f\u7684\u63d2\u5165\u4e86\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcn/dm/download/db/c;->b(J)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_db
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_b2 .. :try_end_db} :catch_dd
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_db} :catch_f6

    goto/16 :goto_d

    :catch_dd
    move-exception v0

    sget-object v0, Lcn/dm/download/db/c;->f:Lcn/dm/download/util/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "the "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is already exist, insert failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :catch_f6
    move-exception v0

    sget-object v1, Lcn/dm/download/db/c;->f:Lcn/dm/download/util/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto/16 :goto_d
.end method

.method public final q()Ljava/util/ArrayList;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 25
    iget-object v0, p0, Lcn/dm/download/db/c;->av:Lcn/dm/download/db/a;

    const-string v1, "download_app_tab"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcn/dm/download/db/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    :goto_11
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 46
    if-eqz v0, :cond_1c

    .line 47
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_1c
    return-object v1

    .line 28
    :cond_1d
    new-instance v2, Lcn/dm/download/bean/DownloadAppInfo;

    invoke-direct {v2}, Lcn/dm/download/bean/DownloadAppInfo;-><init>()V

    .line 29
    const-string v3, "_app_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcn/dm/download/bean/DownloadAppInfo;->setAppId(J)V

    .line 30
    const-string v3, "_app_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setAppName(Ljava/lang/String;)V

    .line 31
    const-string v3, "_app_packagename"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setPkgName(Ljava/lang/String;)V

    .line 32
    const-string v3, "_app_download_status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadStatus(I)V

    .line 33
    const-string v3, "_app_size"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcn/dm/download/bean/DownloadAppInfo;->setAppSize(J)V

    .line 34
    const-string v3, "_app_download_url"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadUrl(Ljava/lang/String;)V

    .line 35
    const-string v3, "_app_logo_url"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setLogoUrl(Ljava/lang/String;)V

    .line 36
    const-string v3, "_app_versioncode"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setVersionCode(I)V

    .line 37
    const-string v3, "_app_isupdate"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setIsUpdate(I)V

    .line 38
    const-string v3, "_app_tr"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setTr(Ljava/lang/String;)V

    .line 39
    const-string v3, "_app_vender"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setVendor(Ljava/lang/String;)V

    .line 40
    const-string v3, "_app_versionname"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setVersionName(Ljava/lang/String;)V

    .line 41
    const-string v3, "_app_position"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setPosition(I)V

    .line 42
    const-string v3, "_app_refer"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setRefer(Ljava/lang/String;)V

    .line 43
    const-string v3, "_app_sid"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setSid(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11
.end method
