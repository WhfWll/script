.class public Lcn/domob/wall/core/h/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final A:Ljava/lang/String; = "d[coord_acc]"

.field protected static final B:Ljava/lang/String; = "d[coord_status]"

.field protected static final C:Ljava/lang/String; = "d[coord_timestamp]"

.field protected static final D:Ljava/lang/String; = "dma"

.field protected static final E:Ljava/lang/String; = "areacode"

.field protected static final F:Ljava/lang/String; = "cellid"

.field protected static final G:Ljava/lang/String; = "language"

.field protected static final H:Ljava/lang/String; = "odin1"

.field protected static final I:Ljava/lang/String; = "locaccmeters"

.field protected static final J:Ljava/lang/String; = "ama"

.field protected static final K:Ljava/lang/String; = "ssid"

.field protected static final L:Ljava/lang/String; = "scan"

.field protected static final M:Ljava/lang/String; = "istab"

.field protected static final N:Ljava/lang/String; = "aaid"

.field private static O:Lcn/domob/wall/core/h/d; = null

.field private static P:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static Q:Ljava/lang/String; = null

.field private static R:I = 0x0

.field private static S:I = 0x0

.field private static T:Ljava/lang/String; = null

.field private static U:Ljava/lang/String; = null

.field private static final V:Ljava/lang/String; = "sdk"

.field protected static final a:Ljava/lang/String; = "pb[identifier]"

.field protected static final b:Ljava/lang/String; = "vc"

.field protected static final c:Ljava/lang/String; = "vn"

.field protected static final d:Ljava/lang/String; = "appname"

.field protected static final e:Ljava/lang/String; = "useragent"

.field protected static final f:Ljava/lang/String; = "ua"

.field protected static final g:Ljava/lang/String; = "install"

.field protected static final h:Ljava/lang/String; = "idv"

.field protected static final i:Ljava/lang/String; = "imei"

.field protected static final j:Ljava/lang/String; = "andoidid"

.field protected static final k:Ljava/lang/String; = "osv"

.field protected static final l:Ljava/lang/String; = "devicemodel"

.field protected static final m:Ljava/lang/String; = "network"

.field protected static final n:Ljava/lang/String; = "networkavailable"

.field protected static final o:Ljava/lang/String; = "ip"

.field protected static final p:Ljava/lang/String; = "timezone"

.field protected static final q:Ljava/lang/String; = "carrier"

.field protected static final r:Ljava/lang/String; = "orientation"

.field protected static final s:Ljava/lang/String; = "isemulator"

.field protected static final t:Ljava/lang/String; = "rsd"

.field protected static final u:Ljava/lang/String; = "csd"

.field protected static final v:Ljava/lang/String; = "rsw"

.field protected static final w:Ljava/lang/String; = "rsh"

.field protected static final x:Ljava/lang/String; = "csw"

.field protected static final y:Ljava/lang/String; = "csh"

.field protected static final z:Ljava/lang/String; = "d[coord]"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/h/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/h/e;->O:Lcn/domob/wall/core/h/d;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 571
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "areacode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 572
    const-string v0, ""

    .line 574
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static B(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 602
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "ama"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 603
    const-string v0, ""

    .line 605
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static C(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 616
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "ssid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 617
    const-string v0, ""

    .line 619
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static D(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 623
    const-string v0, ""

    .line 624
    sget-object v1, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v2, "scan"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 625
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 627
    :cond_10
    return-object v0
.end method

.method public static E(Landroid/content/Context;)[Ljava/lang/String;
    .registers 4

    .prologue
    .line 637
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "areacode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "cellid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 638
    :cond_14
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "-1"

    aput-object v2, v0, v1

    .line 641
    :goto_2b
    return-object v0

    :cond_2c
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->B(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method

.method public static F(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 650
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "aaid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 651
    const-string v0, ""

    .line 654
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method private static G(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 256
    invoke-static {p0}, Lcn/domob/wall/core/h/e;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 258
    if-nez v0, :cond_8

    .line 259
    const/4 v0, 0x1

    .line 263
    :goto_7
    return v0

    .line 261
    :cond_8
    const-string v1, "0"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method private static H(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 268
    sget-object v0, Lcn/domob/wall/core/h/e;->O:Lcn/domob/wall/core/h/d;

    const-string v1, "Start to generate device id"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 269
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 271
    :try_start_c
    invoke-static {p0}, Lcn/domob/wall/core/h/e;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_4e

    .line 273
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    :goto_15
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_24
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_24} :catch_54
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_24} :catch_62

    .line 290
    :goto_24
    invoke-static {p0}, Lcn/domob/wall/core/h/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_69

    .line 292
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    :goto_2d
    sget-object v0, Lcn/domob/wall/core/h/e;->O:Lcn/domob/wall/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated device id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 275
    :cond_4e
    :try_start_4e
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_53
    .catch Ljava/lang/SecurityException; {:try_start_4e .. :try_end_53} :catch_54
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_53} :catch_62

    goto :goto_15

    .line 282
    :catch_54
    move-exception v0

    .line 283
    sget-object v2, Lcn/domob/wall/core/h/e;->O:Lcn/domob/wall/core/h/d;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 284
    sget-object v0, Lcn/domob/wall/core/h/e;->O:Lcn/domob/wall/core/h/d;

    const-string v2, "you must set READ_PHONE_STATE permisson in AndroidManifest.xml"

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    goto :goto_24

    .line 286
    :catch_62
    move-exception v0

    .line 287
    sget-object v2, Lcn/domob/wall/core/h/e;->O:Lcn/domob/wall/core/h/d;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_24

    .line 294
    :cond_69
    sget-object v0, Lcn/domob/wall/core/h/e;->O:Lcn/domob/wall/core/h/d;

    const-string v2, "Android ID is null, use -1 instead"

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 295
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2d
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 87
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "pb[identifier]"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 88
    const-string v0, ""

    .line 91
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static a()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    if-eqz p0, :cond_1c

    .line 75
    sget-object v0, Lcn/domob/wall/core/h/e;->O:Lcn/domob/wall/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9700\u8981\u5173\u95ed\u7684\u5b57\u6bb5: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 76
    sput-object p0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    .line 79
    :cond_1c
    return-void
.end method

.method public static a(IZ)Z
    .registers 3

    .prologue
    .line 531
    invoke-static {p0, p1}, Lcn/domob/wall/core/h/b;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 206
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "install"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 207
    const/4 v0, 0x0

    .line 209
    :goto_b
    return v0

    :cond_c
    invoke-static {p0, p1}, Lcn/domob/wall/core/h/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 98
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "vc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 99
    const/4 v0, -0x1

    .line 102
    :goto_b
    return v0

    :cond_c
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->b(Landroid/content/Context;)I

    move-result v0

    goto :goto_b
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 365
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "ip"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 366
    const-string v0, ""

    .line 369
    :goto_c
    return-object v0

    :cond_d
    invoke-static {}, Lcn/domob/wall/core/h/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 375
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "timezone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 376
    const-string v0, ""

    .line 378
    :goto_c
    return-object v0

    :cond_d
    invoke-static {}, Lcn/domob/wall/core/h/b;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 109
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "vn"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 110
    const-string v0, ""

    .line 113
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static d()I
    .registers 2

    .prologue
    .line 497
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "d[coord_acc]"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 498
    const/4 v0, -0x1

    .line 500
    :goto_b
    return v0

    :cond_c
    invoke-static {}, Lcn/domob/wall/core/h/b;->c()I

    move-result v0

    goto :goto_b
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 120
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "appname"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 121
    const-string v0, ""

    .line 124
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static e()I
    .registers 2

    .prologue
    .line 504
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "d[coord_status]"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 505
    const/4 v0, -0x1

    .line 507
    :goto_b
    return v0

    :cond_c
    invoke-static {}, Lcn/domob/wall/core/h/b;->d()I

    move-result v0

    goto :goto_b
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 130
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "useragent"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 131
    const-string v0, ""

    .line 134
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static f()J
    .registers 2

    .prologue
    .line 512
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "d[coord_timestamp]"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 513
    const-wide/16 v0, -0x1

    .line 515
    :goto_c
    return-wide v0

    :cond_d
    invoke-static {}, Lcn/domob/wall/core/h/b;->e()J

    move-result-wide v0

    goto :goto_c
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 141
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "ua"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 142
    const-string v0, ""

    .line 194
    :goto_c
    return-object v0

    .line 145
    :cond_d
    const-string v0, "_"

    .line 146
    sget-object v0, Lcn/domob/wall/core/h/e;->Q:Ljava/lang/String;

    if-nez v0, :cond_a4

    .line 147
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a8

    .line 158
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    :goto_3c
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_59

    .line 171
    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    :cond_59
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    invoke-static {p0}, Lcn/domob/wall/core/h/e;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_6f

    .line 179
    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :cond_6f
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/wall/core/h/e;->Q:Ljava/lang/String;

    .line 190
    sget-object v0, Lcn/domob/wall/core/h/e;->O:Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/h/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserAgent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/domob/wall/core/h/e;->Q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    :cond_a4
    sget-object v0, Lcn/domob/wall/core/h/e;->Q:Ljava/lang/String;

    goto/16 :goto_c

    .line 161
    :cond_a8
    const-string v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3c
.end method

.method public static g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 581
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "language"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 582
    const-string v0, ""

    .line 584
    :goto_c
    return-object v0

    :cond_d
    invoke-static {}, Lcn/domob/wall/core/h/b;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static g(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "install"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    :goto_f
    return-object v0

    :cond_10
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_f
.end method

.method public static h()I
    .registers 2

    .prologue
    .line 589
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "locaccmeters"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 590
    const/4 v0, -0x1

    .line 592
    :goto_b
    return v0

    :cond_c
    invoke-static {}, Lcn/domob/wall/core/h/b;->g()I

    move-result v0

    goto :goto_b
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 227
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "idv"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 228
    const-string v0, ""

    .line 241
    :goto_c
    return-object v0

    .line 231
    :cond_d
    sget-object v0, Lcn/domob/wall/core/h/e;->U:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 232
    invoke-static {p0}, Lcn/domob/wall/core/h/e;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 233
    sget-object v0, Lcn/domob/wall/core/h/e;->O:Lcn/domob/wall/core/h/d;

    const-string v1, "Use emulator id"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 234
    const-string v0, "-1,-1,emulator"

    sput-object v0, Lcn/domob/wall/core/h/e;->U:Ljava/lang/String;

    .line 241
    :cond_22
    :goto_22
    sget-object v0, Lcn/domob/wall/core/h/e;->U:Ljava/lang/String;

    goto :goto_c

    .line 236
    :cond_25
    sget-object v0, Lcn/domob/wall/core/h/e;->O:Lcn/domob/wall/core/h/d;

    const-string v1, "Generate device id"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 237
    invoke-static {p0}, Lcn/domob/wall/core/h/e;->H(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/wall/core/h/e;->U:Ljava/lang/String;

    goto :goto_22
.end method

.method public static i(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 245
    sget-object v1, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v2, "isemulator"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 251
    :cond_b
    :goto_b
    return v0

    .line 248
    :cond_c
    sget-object v1, Lcn/domob/wall/core/h/e;->T:Ljava/lang/String;

    if-nez v1, :cond_16

    .line 249
    invoke-static {p0}, Lcn/domob/wall/core/h/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/domob/wall/core/h/e;->T:Ljava/lang/String;

    .line 251
    :cond_16
    sget-object v1, Lcn/domob/wall/core/h/e;->T:Ljava/lang/String;

    if-nez v1, :cond_b

    invoke-static {p0}, Lcn/domob/wall/core/h/e;->G(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "sdk"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 302
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "imei"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 303
    const-string v0, "-1"

    .line 305
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 309
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "andoidid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 310
    const-string v0, "-1"

    .line 312
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 322
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "osv"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 323
    const-string v0, ""

    .line 325
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 335
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "devicemodel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 336
    const-string v0, ""

    .line 338
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 343
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 344
    const-string v0, ""

    .line 347
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static o(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 355
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "networkavailable"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 356
    const/4 v0, 0x0

    .line 359
    :goto_b
    return v0

    :cond_c
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->l(Landroid/content/Context;)Z

    move-result v0

    goto :goto_b
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 388
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "carrier"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 389
    const-string v0, ""

    .line 391
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 402
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 403
    const-string v0, ""

    .line 405
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static r(Landroid/content/Context;)F
    .registers 3

    .prologue
    .line 417
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "rsd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 418
    const/high16 v0, -0x40800000

    .line 420
    :goto_c
    return v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->o(Landroid/content/Context;)F

    move-result v0

    goto :goto_c
.end method

.method public static s(Landroid/content/Context;)F
    .registers 3

    .prologue
    .line 430
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "csd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 431
    const/high16 v0, -0x40800000

    .line 433
    :goto_c
    return v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->p(Landroid/content/Context;)F

    move-result v0

    goto :goto_c
.end method

.method public static t(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 446
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "rsw"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 447
    const/4 v0, -0x1

    .line 452
    :goto_b
    return v0

    .line 449
    :cond_c
    invoke-static {p0}, Lcn/domob/wall/core/h/e;->v(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcn/domob/wall/core/h/e;->r(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0}, Lcn/domob/wall/core/h/e;->s(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcn/domob/wall/core/h/e;->R:I

    .line 452
    sget v0, Lcn/domob/wall/core/h/e;->R:I

    goto :goto_b
.end method

.method public static u(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 456
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "rsh"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 457
    const/4 v0, -0x1

    .line 462
    :goto_b
    return v0

    .line 459
    :cond_c
    invoke-static {p0}, Lcn/domob/wall/core/h/e;->w(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcn/domob/wall/core/h/e;->r(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0}, Lcn/domob/wall/core/h/e;->s(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcn/domob/wall/core/h/e;->S:I

    .line 462
    sget v0, Lcn/domob/wall/core/h/e;->S:I

    goto :goto_b
.end method

.method public static v(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 466
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "csw"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 467
    const/4 v0, -0x1

    .line 469
    :goto_b
    return v0

    :cond_c
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->q(Landroid/content/Context;)I

    move-result v0

    goto :goto_b
.end method

.method public static w(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 473
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "csh"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 474
    const/4 v0, -0x1

    .line 476
    :goto_b
    return v0

    :cond_c
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->r(Landroid/content/Context;)I

    move-result v0

    goto :goto_b
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 489
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "d[coord]"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 490
    const-string v0, ""

    .line 492
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 541
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "dma"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 542
    const-string v0, ""

    .line 544
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0}, Lcn/domob/wall/core/h/b;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static z(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 550
    sget-object v0, Lcn/domob/wall/core/h/e;->P:Ljava/util/ArrayList;

    const-string v1, "odin1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 551
    const-string v0, ""

    .line 553
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/wall/core/g/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
