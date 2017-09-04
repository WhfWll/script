.class public Lcn/domob/android/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:I = 0x3e8

.field private static B:I = 0x0

.field private static C:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static D:Ljava/util/Vector; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final G:I = 0x5

.field private static final H:I = 0x64

.field private static N:Z = false

.field private static R:Ljava/util/concurrent/ExecutorService; = null

.field private static final S:I = 0x5

.field public static a:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcn/domob/android/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "typeCancel"

.field public static final d:Ljava/lang/String; = "typeInstall"

.field public static final e:Ljava/lang/String; = "actType"

.field public static final f:Ljava/lang/String; = "appName"

.field public static final g:Ljava/lang/String; = "appId"

.field public static final h:Ljava/lang/String; = "notifyId"

.field public static final i:Ljava/lang/String; = "downloadPath"

.field public static final j:I = 0x200

.field public static final k:I = 0x201

.field public static final l:I = 0x204

.field public static final m:I = 0x0

.field public static final n:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x3

.field public static final q:I = -0x1

.field private static r:Lcn/domob/android/i/f;

.field private static s:Landroid/content/Context;

.field private static t:Landroid/content/Context;


# instance fields
.field private final E:I

.field private F:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Z

.field private O:Z

.field private P:J

.field private Q:I

.field private T:Landroid/app/PendingIntent;

.field private U:Landroid/os/Handler;

.field private V:Lcn/domob/android/c/f;

.field private u:Landroid/app/Notification;

.field private v:Landroid/app/NotificationManager;

.field private w:I

.field private x:I

.field private y:Lcn/domob/android/c/b;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/c/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    .line 38
    sput-object v2, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    .line 39
    sput-object v2, Lcn/domob/android/c/a;->t:Landroid/content/Context;

    .line 48
    const/4 v0, 0x0

    sput v0, Lcn/domob/android/c/a;->B:I

    .line 52
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/android/c/a;->a:Ljava/util/Hashtable;

    .line 54
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/android/c/a;->C:Ljava/util/Hashtable;

    .line 56
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/android/c/a;->b:Ljava/util/Hashtable;

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcn/domob/android/c/a;->D:Ljava/util/Vector;

    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Lcn/domob/android/c/a;->N:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IZ)V
    .registers 15

    .prologue
    const/16 v5, 0x1e

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    .line 41
    iput-object v1, p0, Lcn/domob/android/c/a;->v:Landroid/app/NotificationManager;

    .line 42
    iput v4, p0, Lcn/domob/android/c/a;->w:I

    .line 43
    iput v4, p0, Lcn/domob/android/c/a;->x:I

    .line 44
    iput-object v1, p0, Lcn/domob/android/c/a;->y:Lcn/domob/android/c/b;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/c/a;->z:Ljava/lang/String;

    .line 60
    iput v5, p0, Lcn/domob/android/c/a;->E:I

    .line 61
    iput v4, p0, Lcn/domob/android/c/a;->F:I

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/c/a;->I:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/c/a;->J:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/c/a;->K:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcn/domob/android/c/a;->L:Ljava/lang/String;

    .line 96
    iput-boolean v4, p0, Lcn/domob/android/c/a;->M:Z

    .line 101
    iput-boolean v4, p0, Lcn/domob/android/c/a;->O:Z

    .line 113
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/domob/android/c/a;->P:J

    .line 115
    iput v2, p0, Lcn/domob/android/c/a;->Q:I

    .line 309
    new-instance v0, Lcn/domob/android/c/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/domob/android/c/a$1;-><init>(Lcn/domob/android/c/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/c/a;->U:Landroid/os/Handler;

    .line 237
    sput-object p6, Lcn/domob/android/c/a;->t:Landroid/content/Context;

    .line 239
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    .line 241
    iput-boolean p8, p0, Lcn/domob/android/c/a;->O:Z

    .line 243
    iput-object p1, p0, Lcn/domob/android/c/a;->I:Ljava/lang/String;

    .line 245
    iput-object p2, p0, Lcn/domob/android/c/a;->J:Ljava/lang/String;

    .line 247
    iput-object p3, p0, Lcn/domob/android/c/a;->K:Ljava/lang/String;

    .line 249
    if-eq p7, v2, :cond_52

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/c/a;->M:Z

    .line 253
    :cond_52
    iput p7, p0, Lcn/domob/android/c/a;->Q:I

    .line 254
    iput-object p5, p0, Lcn/domob/android/c/a;->L:Ljava/lang/String;

    .line 255
    sget-object v0, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start to download. appName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    sget-object v0, Lcn/domob/android/c/a;->C:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_117

    .line 259
    sget v0, Lcn/domob/android/c/a;->B:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/domob/android/c/a;->B:I

    .line 260
    sget-object v0, Lcn/domob/android/c/a;->C:Ljava/util/Hashtable;

    sget v1, Lcn/domob/android/c/a;->B:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget v0, Lcn/domob/android/c/a;->B:I

    iput v0, p0, Lcn/domob/android/c/a;->w:I

    .line 266
    :goto_a1
    sget-object v0, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notification_id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/domob/android/c/a;->w:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    if-eqz p4, :cond_113

    .line 268
    sget-object v0, Lcn/domob/android/c/a;->b:Ljava/util/Hashtable;

    iget v1, p0, Lcn/domob/android/c/a;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcn/domob/android/c/a;->D:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Lcn/domob/android/c/a;->D:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v5, :cond_113

    .line 273
    sget-object v1, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    const-class v2, Lcn/domob/android/c/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcn/domob/android/c/a;->D:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " from AppPkgMapping"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcn/domob/android/c/a;->b:Ljava/util/Hashtable;

    sget-object v1, Lcn/domob/android/c/a;->D:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcn/domob/android/c/a;->D:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 278
    :cond_113
    invoke-direct {p0}, Lcn/domob/android/c/a;->i()V

    .line 279
    return-void

    .line 263
    :cond_117
    sget-object v0, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " notification_id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcn/domob/android/c/a;->C:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/domob/android/c/a;->w:I

    goto/16 :goto_a1
.end method

.method static synthetic a(Lcn/domob/android/c/a;)I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcn/domob/android/c/a;->F:I

    return v0
.end method

.method static synthetic a(Lcn/domob/android/c/a;I)I
    .registers 2

    .prologue
    .line 35
    iput p1, p0, Lcn/domob/android/c/a;->F:I

    return p1
.end method

.method static synthetic a(Lcn/domob/android/c/a;J)J
    .registers 4

    .prologue
    .line 35
    iput-wide p1, p0, Lcn/domob/android/c/a;->P:J

    return-wide p1
.end method

.method static synthetic a(Lcn/domob/android/c/a;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcn/domob/android/c/a;->T:Landroid/app/PendingIntent;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .prologue
    .line 571
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcn/domob/android/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 585
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 587
    invoke-static {v1}, Lcn/domob/android/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 588
    if-eqz p3, :cond_37

    if-eqz p4, :cond_37

    move-object v2, p4

    .line 600
    :cond_27
    :goto_27
    new-instance v0, Lcn/domob/android/c/h;

    const/4 v5, -0x1

    move-object v1, p0

    move-object v3, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/c/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILcn/domob/android/c/i;)V

    .line 603
    invoke-virtual {v0}, Lcn/domob/android/c/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 604
    if-nez v0, :cond_47

    .line 612
    :goto_36
    return-object v6

    .line 590
    :cond_37
    if-eqz p3, :cond_27

    if-nez p4, :cond_27

    .line 592
    :try_start_3b
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Error; {:try_start_3b .. :try_end_3e} :catch_40

    move-result-object v2

    goto :goto_27

    .line 593
    :catch_40
    move-exception v0

    .line 594
    sget-object v1, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_27

    .line 607
    :cond_47
    if-nez p3, :cond_6c

    .line 608
    sget-object v1, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    const-class v2, Lcn/domob/android/c/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    invoke-static {v0}, Lcn/domob/android/c/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    goto :goto_36

    .line 611
    :cond_6c
    sget-object v1, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    const-class v2, Lcn/domob/android/c/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    invoke-static {v0}, Lcn/domob/android/c/a;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    goto :goto_36
.end method

.method public static a(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .prologue
    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/c/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcn/domob/android/c/a;->z:Ljava/lang/String;

    return-object p1
.end method

.method public static a(I)V
    .registers 4

    .prologue
    .line 637
    :try_start_0
    sget-object v0, Lcn/domob/android/c/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 638
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 639
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 640
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 642
    sget-object v2, Lcn/domob/android/c/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/c/a;

    .line 643
    iget v2, v0, Lcn/domob/android/c/a;->Q:I

    if-ne v2, p0, :cond_a

    .line 644
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/domob/android/c/a;->a(Z)V

    .line 645
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_a

    .line 648
    :catch_30
    move-exception v0

    .line 649
    sget-object v1, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 651
    :cond_36
    return-void
.end method

.method static synthetic a(Lcn/domob/android/c/a;Ljava/lang/String;J)V
    .registers 4

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/c/a;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private a(Lcn/domob/android/c/b;)V
    .registers 2

    .prologue
    .line 285
    iput-object p1, p0, Lcn/domob/android/c/a;->y:Lcn/domob/android/c/b;

    .line 286
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .registers 12

    .prologue
    .line 536
    sget-object v0, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin download in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    new-instance v1, Lcn/domob/android/c/f;

    iget-object v2, p0, Lcn/domob/android/c/a;->I:Ljava/lang/String;

    new-instance v6, Lcn/domob/android/c/a$3;

    invoke-direct {v6, p0}, Lcn/domob/android/c/a$3;-><init>(Lcn/domob/android/c/a;)V

    sget-object v7, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v7}, Lcn/domob/android/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;JLcn/domob/android/c/c;Landroid/content/Context;)V

    iput-object v1, p0, Lcn/domob/android/c/a;->V:Lcn/domob/android/c/f;

    .line 557
    sget-object v0, Lcn/domob/android/c/a;->R:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_46

    sget-object v0, Lcn/domob/android/c/a;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/c/a;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 558
    sget-object v0, Lcn/domob/android/c/a;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/c/a;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v0, Lcn/domob/android/c/a;->R:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcn/domob/android/c/a;->V:Lcn/domob/android/c/f;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 561
    :cond_46
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 208
    const-string v1, ""

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v7, p3

    invoke-static/range {v0 .. v8}, Lcn/domob/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 209
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;I)V
    .registers 15

    .prologue
    const/4 v2, 0x0

    .line 196
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcn/domob/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 197
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;)V
    .registers 14

    .prologue
    const/4 v5, 0x0

    .line 232
    sget-boolean v6, Lcn/domob/android/c/a;->N:Z

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, v5

    invoke-static/range {v0 .. v8}, Lcn/domob/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 233
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;Z)V
    .registers 16

    .prologue
    .line 224
    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v8}, Lcn/domob/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 225
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;ZLjava/lang/String;I)V
    .registers 19

    .prologue
    .line 138
    sget-object v1, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    const-class v2, Lcn/domob/android/c/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    sget-object v3, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    const-class v4, Lcn/domob/android/c/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download uri path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget-object v3, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    const-class v4, Lcn/domob/android/c/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download uri host: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    const-string v4, ""

    .line 145
    const/4 v3, 0x2

    move/from16 v0, p8

    if-eq v0, v3, :cond_ec

    .line 146
    if-nez p7, :cond_e9

    .line 148
    :try_start_7c
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_7f
    .catch Ljava/lang/Error; {:try_start_7c .. :try_end_7f} :catch_db

    move-result-object v4

    .line 159
    :goto_80
    sget-object v1, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    const-class v2, Lcn/domob/android/c/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download filename(md5) "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    sget-object v1, Lcn/domob/android/c/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 163
    const/16 v1, 0x200

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u5e94\u7528\u5df2\u5728\u4e0b\u8f7d,fileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Lcn/domob/android/c/b;->a(ILjava/lang/String;)V

    .line 164
    sget-object v1, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    const-class v2, Lcn/domob/android/c/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is downloading"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    :goto_da
    return-void

    .line 149
    :catch_db
    move-exception v1

    .line 150
    sget-object v2, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 151
    const/16 v1, 0x204

    const-string v2, "\u5f53\u524d\u6587\u4ef6\u7684\u4e0b\u8f7d\u5730\u5740\u6709\u8bef"

    invoke-interface {p4, v1, v2}, Lcn/domob/android/c/b;->a(ILjava/lang/String;)V

    goto :goto_80

    :cond_e9
    move-object/from16 v4, p7

    .line 154
    goto :goto_80

    .line 157
    :cond_ec
    invoke-static {v2}, Lcn/domob/android/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_80

    .line 167
    :cond_f1
    sget-object v1, Lcn/domob/android/c/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_10c

    .line 168
    const/16 v1, 0x201

    const-string v2, "\u6700\u5927\u4e0b\u8f7d\u6570\u4e3a1000\u4e2a"

    invoke-interface {p4, v1, v2}, Lcn/domob/android/c/b;->a(ILjava/lang/String;)V

    .line 169
    sget-object v1, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    const-class v2, Lcn/domob/android/c/a;

    const-string v3, "Maximum download number is 1000"

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_da

    .line 172
    :cond_10c
    new-instance v1, Lcn/domob/android/c/a;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p5

    move-object v7, p3

    move/from16 v8, p8

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcn/domob/android/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IZ)V

    .line 174
    invoke-direct {v1, p4}, Lcn/domob/android/c/a;->a(Lcn/domob/android/c/b;)V

    .line 175
    if-eqz p6, :cond_122

    .line 176
    invoke-direct {v1}, Lcn/domob/android/c/a;->e()V

    .line 179
    :cond_122
    invoke-direct {v1}, Lcn/domob/android/c/a;->h()V

    .line 180
    invoke-interface {p4}, Lcn/domob/android/c/b;->a()V

    goto :goto_da
.end method

.method static synthetic b(Lcn/domob/android/c/a;I)I
    .registers 2

    .prologue
    .line 35
    iput p1, p0, Lcn/domob/android/c/a;->x:I

    return p1
.end method

.method static synthetic b()Landroid/content/Context;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 654
    invoke-static {p0}, Lcn/domob/android/i/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/c/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcn/domob/android/c/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcn/domob/android/c/a;)Z
    .registers 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lcn/domob/android/c/a;->O:Z

    return v0
.end method

.method static synthetic c(Lcn/domob/android/c/a;I)I
    .registers 2

    .prologue
    .line 35
    iput p1, p0, Lcn/domob/android/c/a;->Q:I

    return p1
.end method

.method static synthetic c(Ljava/lang/String;)Landroid/content/Intent;
    .registers 2

    .prologue
    .line 35
    invoke-static {p0}, Lcn/domob/android/c/a;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/c/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/domob/android/c/a;->J:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcn/domob/android/c/a;)Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/domob/android/c/a;->T:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic d()Landroid/content/Context;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcn/domob/android/c/a;->t:Landroid/content/Context;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 659
    iget-boolean v0, p0, Lcn/domob/android/c/a;->O:Z

    if-nez v0, :cond_5

    .line 669
    :goto_4
    return-void

    .line 662
    :cond_5
    sget-object v0, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    iget v1, p0, Lcn/domob/android/c/a;->w:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 664
    iget-object v1, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    const v2, 0x1080078

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 665
    iget-object v1, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/c/a;->J:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 666
    iget-object v1, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    sget-object v2, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/domob/android/c/a;->J:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 667
    iget-object v0, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 668
    iget-object v0, p0, Lcn/domob/android/c/a;->v:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/domob/android/c/a;->w:I

    iget-object v2, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_4
.end method

.method static synthetic e(Lcn/domob/android/c/a;)Landroid/app/Notification;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    .prologue
    .line 672
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    sget-object v1, Lcn/domob/android/c/a;->t:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 675
    return-object v0
.end method

.method private e()V
    .registers 6

    .prologue
    .line 293
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    .line 294
    iget-object v0, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    const v1, 0x1080081

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 296
    iget-object v0, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/c/a;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 298
    sget-object v0, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    iget v1, p0, Lcn/domob/android/c/a;->w:I

    invoke-direct {p0}, Lcn/domob/android/c/a;->g()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/c/a;->T:Landroid/app/PendingIntent;

    .line 300
    iget-object v0, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    sget-object v1, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/c/a;->J:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcn/domob/android/c/a;->T:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 302
    sget-object v0, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/domob/android/c/a;->v:Landroid/app/NotificationManager;

    .line 304
    invoke-direct {p0}, Lcn/domob/android/c/a;->f()V

    .line 305
    return-void
.end method

.method static synthetic f(Lcn/domob/android/c/a;)I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcn/domob/android/c/a;->w:I

    return v0
.end method

.method private f()V
    .registers 4

    .prologue
    .line 426
    iget-object v0, p0, Lcn/domob/android/c/a;->v:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/domob/android/c/a;->w:I

    iget-object v2, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 427
    return-void
.end method

.method static synthetic g(Lcn/domob/android/c/a;)Landroid/app/NotificationManager;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/domob/android/c/a;->v:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private g()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 438
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 439
    sget-object v1, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    const-class v2, Lcn/domob/android/ads/DomobActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 440
    const-string v1, "appName"

    iget-object v2, p0, Lcn/domob/android/c/a;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v1, "appId"

    iget-object v2, p0, Lcn/domob/android/c/a;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v1, "actType"

    const-string v2, "typeCancel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v1, "DomobActivityType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 444
    return-object v0
.end method

.method static synthetic h(Lcn/domob/android/c/a;)I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcn/domob/android/c/a;->x:I

    return v0
.end method

.method private h()V
    .registers 8

    .prologue
    .line 449
    new-instance v0, Lcn/domob/android/c/h;

    sget-object v1, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/c/a;->K:Ljava/lang/String;

    iget-object v3, p0, Lcn/domob/android/c/a;->I:Ljava/lang/String;

    iget-boolean v4, p0, Lcn/domob/android/c/a;->M:Z

    iget v5, p0, Lcn/domob/android/c/a;->Q:I

    new-instance v6, Lcn/domob/android/c/a$2;

    invoke-direct {v6, p0}, Lcn/domob/android/c/a$2;-><init>(Lcn/domob/android/c/a;)V

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/c/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILcn/domob/android/c/i;)V

    .line 530
    invoke-virtual {v0}, Lcn/domob/android/c/h;->start()V

    .line 531
    return-void
.end method

.method static synthetic i(Lcn/domob/android/c/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/domob/android/c/a;->z:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .registers 2

    .prologue
    .line 685
    sget-object v0, Lcn/domob/android/c/a;->R:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_b

    .line 686
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/domob/android/c/a;->R:Ljava/util/concurrent/ExecutorService;

    .line 688
    :cond_b
    return-void
.end method

.method static synthetic j(Lcn/domob/android/c/a;)I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcn/domob/android/c/a;->Q:I

    return v0
.end method

.method static synthetic k(Lcn/domob/android/c/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/domob/android/c/a;->K:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcn/domob/android/c/a;)Lcn/domob/android/c/b;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/domob/android/c/a;->y:Lcn/domob/android/c/b;

    return-object v0
.end method

.method static synthetic m(Lcn/domob/android/c/a;)J
    .registers 3

    .prologue
    .line 35
    iget-wide v0, p0, Lcn/domob/android/c/a;->P:J

    return-wide v0
.end method

.method static synthetic n(Lcn/domob/android/c/a;)Z
    .registers 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lcn/domob/android/c/a;->M:Z

    return v0
.end method

.method static synthetic o(Lcn/domob/android/c/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/domob/android/c/a;->L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcn/domob/android/c/a;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/domob/android/c/a;->U:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()Lcn/domob/android/c/b;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcn/domob/android/c/a;->y:Lcn/domob/android/c/b;

    return-object v0
.end method

.method public a(Z)V
    .registers 6

    .prologue
    .line 622
    sget-object v0, Lcn/domob/android/c/a;->r:Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/c/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop download  and cancel notify if is UI mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/domob/android/c/a;->w:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcn/domob/android/c/a;->V:Lcn/domob/android/c/f;

    if-eqz v0, :cond_29

    .line 625
    iget-object v0, p0, Lcn/domob/android/c/a;->V:Lcn/domob/android/c/f;

    invoke-virtual {v0}, Lcn/domob/android/c/f;->b()V

    .line 627
    :cond_29
    iget-boolean v0, p0, Lcn/domob/android/c/a;->O:Z

    if-eqz v0, :cond_34

    .line 628
    iget-object v0, p0, Lcn/domob/android/c/a;->v:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/domob/android/c/a;->w:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 630
    :cond_34
    if-eqz p1, :cond_3d

    .line 631
    sget-object v0, Lcn/domob/android/c/a;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/c/a;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    :cond_3d
    return-void
.end method
