.class public Lcn/dbox/core/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static A:Ljava/util/Hashtable; = null
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

.field private static B:Ljava/util/Vector; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final E:I = 0x5

.field private static final F:I = 0x64

.field private static L:Z = false

.field private static M:Z = false

.field public static a:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcn/dbox/core/d/b;",
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

.field private static p:Lcn/dbox/core/h/d; = null

.field private static final y:I = 0x3e8

.field private static z:I


# instance fields
.field private final C:I

.field private D:I

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Z

.field private N:I

.field private O:Landroid/app/PendingIntent;

.field private P:Landroid/os/Handler;

.field private Q:Lcn/dbox/core/d/g;

.field private q:Landroid/content/Context;

.field private r:Landroid/content/Context;

.field private s:Landroid/app/Notification;

.field private t:Landroid/app/NotificationManager;

.field private u:I

.field private v:I

.field private w:Lcn/dbox/core/d/c;

.field private x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 31
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/d/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/d/b;->p:Lcn/dbox/core/h/d;

    .line 43
    const/4 v0, 0x0

    sput v0, Lcn/dbox/core/d/b;->z:I

    .line 47
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/dbox/core/d/b;->a:Ljava/util/Hashtable;

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/dbox/core/d/b;->A:Ljava/util/Hashtable;

    .line 51
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/dbox/core/d/b;->b:Ljava/util/Hashtable;

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcn/dbox/core/d/b;->B:Ljava/util/Vector;

    .line 93
    sput-boolean v2, Lcn/dbox/core/d/b;->L:Z

    .line 95
    sput-boolean v2, Lcn/dbox/core/d/b;->M:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)V
    .registers 14

    .prologue
    const/16 v5, 0x1e

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lcn/dbox/core/d/b;->q:Landroid/content/Context;

    .line 34
    iput-object v1, p0, Lcn/dbox/core/d/b;->r:Landroid/content/Context;

    .line 35
    iput-object v1, p0, Lcn/dbox/core/d/b;->s:Landroid/app/Notification;

    .line 36
    iput-object v1, p0, Lcn/dbox/core/d/b;->t:Landroid/app/NotificationManager;

    .line 37
    iput v4, p0, Lcn/dbox/core/d/b;->u:I

    .line 38
    iput v4, p0, Lcn/dbox/core/d/b;->v:I

    .line 39
    iput-object v1, p0, Lcn/dbox/core/d/b;->w:Lcn/dbox/core/d/c;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcn/dbox/core/d/b;->x:Ljava/lang/String;

    .line 55
    iput v5, p0, Lcn/dbox/core/d/b;->C:I

    .line 56
    iput v4, p0, Lcn/dbox/core/d/b;->D:I

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcn/dbox/core/d/b;->G:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcn/dbox/core/d/b;->H:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcn/dbox/core/d/b;->I:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcn/dbox/core/d/b;->J:Ljava/lang/String;

    .line 91
    iput-boolean v4, p0, Lcn/dbox/core/d/b;->K:Z

    .line 105
    iput v2, p0, Lcn/dbox/core/d/b;->N:I

    .line 292
    new-instance v0, Lcn/dbox/core/d/b$1;

    invoke-direct {v0, p0}, Lcn/dbox/core/d/b$1;-><init>(Lcn/dbox/core/d/b;)V

    iput-object v0, p0, Lcn/dbox/core/d/b;->P:Landroid/os/Handler;

    .line 223
    iput-object p6, p0, Lcn/dbox/core/d/b;->r:Landroid/content/Context;

    .line 225
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/d/b;->q:Landroid/content/Context;

    .line 227
    iput-object p1, p0, Lcn/dbox/core/d/b;->G:Ljava/lang/String;

    .line 229
    iput-object p2, p0, Lcn/dbox/core/d/b;->H:Ljava/lang/String;

    .line 231
    iput-object p3, p0, Lcn/dbox/core/d/b;->I:Ljava/lang/String;

    .line 233
    if-eq p7, v2, :cond_4a

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/dbox/core/d/b;->K:Z

    .line 237
    :cond_4a
    iput p7, p0, Lcn/dbox/core/d/b;->N:I

    .line 238
    iput-object p5, p0, Lcn/dbox/core/d/b;->J:Ljava/lang/String;

    .line 239
    sget-object v0, Lcn/dbox/core/d/b;->p:Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/d/b;

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

    invoke-virtual {v0, v1, v2}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcn/dbox/core/d/b;->A:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10c

    .line 243
    sget v0, Lcn/dbox/core/d/b;->z:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/dbox/core/d/b;->z:I

    .line 244
    sget-object v0, Lcn/dbox/core/d/b;->A:Ljava/util/Hashtable;

    sget v1, Lcn/dbox/core/d/b;->z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget v0, Lcn/dbox/core/d/b;->z:I

    iput v0, p0, Lcn/dbox/core/d/b;->u:I

    .line 250
    :goto_99
    sget-object v0, Lcn/dbox/core/d/b;->p:Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/d/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notification_id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/dbox/core/d/b;->u:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    if-eqz p4, :cond_10b

    .line 252
    sget-object v0, Lcn/dbox/core/d/b;->b:Ljava/util/Hashtable;

    iget v1, p0, Lcn/dbox/core/d/b;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcn/dbox/core/d/b;->B:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcn/dbox/core/d/b;->B:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v5, :cond_10b

    .line 257
    sget-object v1, Lcn/dbox/core/d/b;->p:Lcn/dbox/core/h/d;

    const-class v2, Lcn/dbox/core/d/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcn/dbox/core/d/b;->B:Ljava/util/Vector;

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

    invoke-virtual {v1, v2, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    sget-object v0, Lcn/dbox/core/d/b;->b:Ljava/util/Hashtable;

    sget-object v1, Lcn/dbox/core/d/b;->B:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcn/dbox/core/d/b;->B:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 263
    :cond_10b
    return-void

    .line 247
    :cond_10c
    sget-object v0, Lcn/dbox/core/d/b;->p:Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/d/b;

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

    invoke-virtual {v0, v1, v2}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    sget-object v0, Lcn/dbox/core/d/b;->A:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/dbox/core/d/b;->u:I

    goto/16 :goto_99
.end method

.method static synthetic a(Lcn/dbox/core/d/b;)I
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lcn/dbox/core/d/b;->D:I

    return v0
.end method

.method static synthetic a(Lcn/dbox/core/d/b;I)I
    .registers 2

    .prologue
    .line 30
    iput p1, p0, Lcn/dbox/core/d/b;->D:I

    return p1
.end method

.method static synthetic a(Lcn/dbox/core/d/b;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcn/dbox/core/d/b;->O:Landroid/app/PendingIntent;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .prologue
    .line 530
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcn/dbox/core/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 544
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 545
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

    .line 546
    invoke-static {v1}, Lcn/dbox/core/d/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 547
    if-eqz p3, :cond_36

    if-eqz p4, :cond_36

    move-object v2, p4

    .line 559
    :cond_27
    :goto_27
    new-instance v0, Lcn/dbox/core/d/o;

    move-object v1, p0

    move-object v3, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/dbox/core/d/o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcn/dbox/core/d/p;)V

    .line 562
    invoke-virtual {v0}, Lcn/dbox/core/d/o;->a()Ljava/lang/String;

    move-result-object v0

    .line 563
    if-nez v0, :cond_46

    .line 574
    :goto_35
    return-object v5

    .line 549
    :cond_36
    if-eqz p3, :cond_27

    if-nez p4, :cond_27

    .line 551
    :try_start_3a
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Error; {:try_start_3a .. :try_end_3d} :catch_3f

    move-result-object v2

    goto :goto_27

    .line 552
    :catch_3f
    move-exception v0

    .line 553
    sget-object v1, Lcn/dbox/core/d/b;->p:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_27

    .line 566
    :cond_46
    if-nez p3, :cond_6b

    .line 567
    sget-object v1, Lcn/dbox/core/d/b;->p:Lcn/dbox/core/h/d;

    const-class v2, Lcn/dbox/core/d/b;

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

    invoke-virtual {v1, v2, v3}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    invoke-static {v0}, Lcn/dbox/core/d/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    goto :goto_35

    .line 570
    :cond_6b
    sget-object v1, Lcn/dbox/core/d/b;->p:Lcn/dbox/core/h/d;

    const-class v2, Lcn/dbox/core/d/b;

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

    invoke-virtual {v1, v2, v3}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    new-instance v5, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_35
.end method

.method static a(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .prologue
    .line 414
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
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

    .line 416
    return-object v0
.end method

.method static synthetic a(Lcn/dbox/core/d/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcn/dbox/core/d/b;->x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcn/dbox/core/d/b;Ljava/lang/String;J)V
    .registers 4

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcn/dbox/core/d/b;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private a(Lcn/dbox/core/d/c;)V
    .registers 2

    .prologue
    .line 269
    iput-object p1, p0, Lcn/dbox/core/d/b;->w:Lcn/dbox/core/d/c;

    .line 270
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .registers 12

    .prologue
    .line 494
    sget-object v0, Lcn/dbox/core/d/b;->p:Lcn/dbox/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin download in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    new-instance v1, Lcn/dbox/core/d/g;

    iget-object v2, p0, Lcn/dbox/core/d/b;->G:Ljava/lang/String;

    new-instance v6, Lcn/dbox/core/d/b$3;

    invoke-direct {v6, p0}, Lcn/dbox/core/d/b$3;-><init>(Lcn/dbox/core/d/b;)V

    iget-object v7, p0, Lcn/dbox/core/d/b;->q:Landroid/content/Context;

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v7}, Lcn/dbox/core/d/g;-><init>(Ljava/lang/String;Ljava/lang/String;JLcn/dbox/core/d/f;Landroid/content/Context;)V

    iput-object v1, p0, Lcn/dbox/core/d/b;->Q:Lcn/dbox/core/d/g;

    .line 517
    iget-object v0, p0, Lcn/dbox/core/d/b;->Q:Lcn/dbox/core/d/g;

    invoke-virtual {v0}, Lcn/dbox/core/d/g;->start()V

    .line 518
    sget-object v0, Lcn/dbox/core/d/b;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/dbox/core/d/b;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Lcn/dbox/core/d/c;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 194
    const-string v1, ""

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v7, p3

    invoke-static/range {v0 .. v8}, Lcn/dbox/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/dbox/core/d/c;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 195
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/dbox/core/d/c;Ljava/lang/String;I)V
    .registers 15

    .prologue
    const/4 v2, 0x0

    .line 182
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcn/dbox/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/dbox/core/d/c;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 183
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/dbox/core/d/c;)V
    .registers 14

    .prologue
    const/4 v5, 0x0

    .line 218
    sget-boolean v6, Lcn/dbox/core/d/b;->L:Z

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, v5

    invoke-static/range {v0 .. v8}, Lcn/dbox/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/dbox/core/d/c;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 219
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/dbox/core/d/c;Ljava/lang/String;Z)V
    .registers 16

    .prologue
    .line 210
    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v8}, Lcn/dbox/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/dbox/core/d/c;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 211
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/dbox/core/d/c;Ljava/lang/String;ZLjava/lang/String;I)V
    .registers 18

    .prologue
    .line 124
    sget-object v1, Lcn/dbox/core/d/b;->p:Lcn/dbox/core/h/d;

    const-class v2, Lcn/dbox/core/d/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 127
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

    .line 128
    sget-object v3, Lcn/dbox/core/d/b;->p:Lcn/dbox/core/h/d;

    const-class v4, Lcn/dbox/core/d/b;

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

    invoke-virtual {v3, v4, v5}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    sget-object v3, Lcn/dbox/core/d/b;->p:Lcn/dbox/core/h/d;

    const-class v4, Lcn/dbox/core/d/b;

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

    invoke-virtual {v3, v4, v5}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    const-string v4, ""

    .line 131
    const/4 v3, 0x2

    move/from16 v0, p8

    if-eq v0, v3, :cond_dd

    .line 132
    if-nez p7, :cond_da

    .line 134
    :try_start_7c
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_7f
    .catch Ljava/lang/Error; {:try_start_7c .. :try_end_7f} :catch_cc

    move-result-object v4

    .line 145
    :goto_80
    sget-object v1, Lcn/dbox/core/d/b;->p:Lcn/dbox/core/h/d;

    const-class v2, Lcn/dbox/core/d/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download filename(md5) "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sput-boolean p6, Lcn/dbox/core/d/b;->M:Z

    .line 148
    sget-object v1, Lcn/dbox/core/d/b;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 149
    const/16 v1, 0x200

    const-string v2, "\u5f53\u524d\u5e94\u7528\u5df2\u5728\u4e0b\u8f7d"

    invoke-interface {p4, v1, v2}, Lcn/dbox/core/d/c;->a(ILjava/lang/String;)V

    .line 150
    sget-object v1, Lcn/dbox/core/d/b;->p:Lcn/dbox/core/h/d;

    const-class v2, Lcn/dbox/core/d/b;

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

    invoke-virtual {v1, v2, v3}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    :goto_cb
    return-void

    .line 135
    :catch_cc
    move-exception v1

    .line 136
    sget-object v2, Lcn/dbox/core/d/b;->p:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 137
    const/16 v1, 0x204

    const-string v2, "\u5f53\u524d\u6587\u4ef6\u7684\u4e0b\u8f7d\u5730\u5740\u6709\u8bef"

    invoke-interface {p4, v1, v2}, Lcn/dbox/core/d/c;->a(ILjava/lang/String;)V

    goto :goto_80

    :cond_da
    move-object/from16 v4, p7

    .line 140
    goto :goto_80

    .line 143
    :cond_dd
    invoke-static {v2}, Lcn/dbox/core/d/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_80

    .line 153
    :cond_e2
    sget-object v1, Lcn/dbox/core/d/b;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_fd

    .line 154
    const/16 v1, 0x201

    const-string v2, "\u6700\u5927\u4e0b\u8f7d\u6570\u4e3a1000\u4e2a"

    invoke-interface {p4, v1, v2}, Lcn/dbox/core/d/c;->a(ILjava/lang/String;)V

    .line 155
    sget-object v1, Lcn/dbox/core/d/b;->p:Lcn/dbox/core/h/d;

    const-class v2, Lcn/dbox/core/d/b;

    const-string v3, "Maximum download number is 1000"

    invoke-virtual {v1, v2, v3}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_cb

    .line 158
    :cond_fd
    new-instance v1, Lcn/dbox/core/d/b;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p5

    move-object v7, p3

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcn/dbox/core/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)V

    .line 160
    invoke-direct {v1, p4}, Lcn/dbox/core/d/b;->a(Lcn/dbox/core/d/c;)V

    .line 161
    sget-boolean v2, Lcn/dbox/core/d/b;->M:Z

    if-eqz v2, :cond_113

    .line 162
    invoke-direct {v1}, Lcn/dbox/core/d/b;->e()V

    .line 165
    :cond_113
    invoke-direct {v1}, Lcn/dbox/core/d/b;->h()V

    .line 166
    invoke-interface {p4}, Lcn/dbox/core/d/c;->a()V

    goto :goto_cb
.end method

.method static synthetic b(Lcn/dbox/core/d/b;I)I
    .registers 2

    .prologue
    .line 30
    iput p1, p0, Lcn/dbox/core/d/b;->v:I

    return p1
.end method

.method static synthetic b(Lcn/dbox/core/d/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/core/d/b;->q:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcn/dbox/core/d/b;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcn/dbox/core/d/b;->d(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 594
    invoke-static {p0}, Lcn/dbox/core/h/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    return-object v0
.end method

.method static synthetic c(Lcn/dbox/core/d/b;I)I
    .registers 2

    .prologue
    .line 30
    iput p1, p0, Lcn/dbox/core/d/b;->N:I

    return p1
.end method

.method static synthetic c(Lcn/dbox/core/d/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/core/d/b;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/dbox/core/d/b;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcn/dbox/core/d/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 599
    iget-object v0, p0, Lcn/dbox/core/d/b;->q:Landroid/content/Context;

    iget v1, p0, Lcn/dbox/core/d/b;->u:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 601
    iget-object v1, p0, Lcn/dbox/core/d/b;->s:Landroid/app/Notification;

    const v2, 0x1080078

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 602
    iget-object v1, p0, Lcn/dbox/core/d/b;->s:Landroid/app/Notification;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/dbox/core/d/b;->H:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 603
    iget-object v1, p0, Lcn/dbox/core/d/b;->s:Landroid/app/Notification;

    iget-object v2, p0, Lcn/dbox/core/d/b;->q:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/dbox/core/d/b;->H:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 604
    iget-object v0, p0, Lcn/dbox/core/d/b;->s:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 605
    iget-object v0, p0, Lcn/dbox/core/d/b;->t:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/dbox/core/d/b;->u:I

    iget-object v2, p0, Lcn/dbox/core/d/b;->s:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 606
    return-void
.end method

.method static synthetic c()Z
    .registers 1

    .prologue
    .line 30
    sget-boolean v0, Lcn/dbox/core/d/b;->M:Z

    return v0
.end method

.method static synthetic d(Lcn/dbox/core/d/b;)Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/core/d/b;->O:Landroid/app/PendingIntent;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Landroid/content/Intent;
    .registers 7

    .prologue
    .line 609
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    iget-object v1, p0, Lcn/dbox/core/d/b;->r:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 612
    return-object v0
.end method

.method static synthetic d()Lcn/dbox/core/h/d;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcn/dbox/core/d/b;->p:Lcn/dbox/core/h/d;

    return-object v0
.end method

.method static synthetic e(Lcn/dbox/core/d/b;)Landroid/app/Notification;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/core/d/b;->s:Landroid/app/Notification;

    return-object v0
.end method

.method private e()V
    .registers 6

    .prologue
    .line 277
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/d/b;->s:Landroid/app/Notification;

    .line 278
    iget-object v0, p0, Lcn/dbox/core/d/b;->s:Landroid/app/Notification;

    const v1, 0x1080081

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 280
    iget-object v0, p0, Lcn/dbox/core/d/b;->s:Landroid/app/Notification;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/dbox/core/d/b;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 282
    iget-object v0, p0, Lcn/dbox/core/d/b;->q:Landroid/content/Context;

    iget v1, p0, Lcn/dbox/core/d/b;->u:I

    invoke-direct {p0}, Lcn/dbox/core/d/b;->g()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/d/b;->O:Landroid/app/PendingIntent;

    .line 284
    iget-object v0, p0, Lcn/dbox/core/d/b;->s:Landroid/app/Notification;

    iget-object v1, p0, Lcn/dbox/core/d/b;->q:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/dbox/core/d/b;->H:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcn/dbox/core/d/b;->O:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 286
    iget-object v0, p0, Lcn/dbox/core/d/b;->q:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/dbox/core/d/b;->t:Landroid/app/NotificationManager;

    .line 288
    invoke-direct {p0}, Lcn/dbox/core/d/b;->f()V

    .line 289
    return-void
.end method

.method static synthetic f(Lcn/dbox/core/d/b;)I
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lcn/dbox/core/d/b;->u:I

    return v0
.end method

.method private f()V
    .registers 4

    .prologue
    .line 409
    iget-object v0, p0, Lcn/dbox/core/d/b;->t:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/dbox/core/d/b;->u:I

    iget-object v2, p0, Lcn/dbox/core/d/b;->s:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 410
    return-void
.end method

.method static synthetic g(Lcn/dbox/core/d/b;)Landroid/app/NotificationManager;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/core/d/b;->t:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private g()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 421
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 422
    iget-object v1, p0, Lcn/dbox/core/d/b;->q:Landroid/content/Context;

    const-class v2, Lcn/dbox/core/d/d;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 423
    const-string v1, "appName"

    iget-object v2, p0, Lcn/dbox/core/d/b;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const-string v1, "appId"

    iget-object v2, p0, Lcn/dbox/core/d/b;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const-string v1, "actType"

    const-string v2, "typeCancel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string v1, "ActivityType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    return-object v0
.end method

.method static synthetic h(Lcn/dbox/core/d/b;)I
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lcn/dbox/core/d/b;->v:I

    return v0
.end method

.method private h()V
    .registers 7

    .prologue
    .line 432
    new-instance v0, Lcn/dbox/core/d/o;

    iget-object v1, p0, Lcn/dbox/core/d/b;->q:Landroid/content/Context;

    iget-object v2, p0, Lcn/dbox/core/d/b;->I:Ljava/lang/String;

    iget-object v3, p0, Lcn/dbox/core/d/b;->G:Ljava/lang/String;

    iget-boolean v4, p0, Lcn/dbox/core/d/b;->K:Z

    new-instance v5, Lcn/dbox/core/d/b$2;

    invoke-direct {v5, p0}, Lcn/dbox/core/d/b$2;-><init>(Lcn/dbox/core/d/b;)V

    invoke-direct/range {v0 .. v5}, Lcn/dbox/core/d/o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcn/dbox/core/d/p;)V

    .line 488
    invoke-virtual {v0}, Lcn/dbox/core/d/o;->start()V

    .line 489
    return-void
.end method

.method static synthetic i(Lcn/dbox/core/d/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/core/d/b;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcn/dbox/core/d/b;)I
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lcn/dbox/core/d/b;->N:I

    return v0
.end method

.method static synthetic k(Lcn/dbox/core/d/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/core/d/b;->I:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcn/dbox/core/d/b;)Lcn/dbox/core/d/c;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/core/d/b;->w:Lcn/dbox/core/d/c;

    return-object v0
.end method

.method static synthetic m(Lcn/dbox/core/d/b;)Z
    .registers 2

    .prologue
    .line 30
    iget-boolean v0, p0, Lcn/dbox/core/d/b;->K:Z

    return v0
.end method

.method static synthetic n(Lcn/dbox/core/d/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/core/d/b;->J:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcn/dbox/core/d/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/core/d/b;->r:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lcn/dbox/core/d/b;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/core/d/b;->P:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()Lcn/dbox/core/d/c;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcn/dbox/core/d/b;->w:Lcn/dbox/core/d/c;

    return-object v0
.end method

.method public b()V
    .registers 5

    .prologue
    .line 584
    sget-object v0, Lcn/dbox/core/d/b;->p:Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/d/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop download  and cancel notify if is UI mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/dbox/core/d/b;->u:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcn/dbox/core/d/b;->Q:Lcn/dbox/core/d/g;

    if-eqz v0, :cond_29

    .line 587
    iget-object v0, p0, Lcn/dbox/core/d/b;->Q:Lcn/dbox/core/d/g;

    invoke-virtual {v0}, Lcn/dbox/core/d/g;->b()V

    .line 589
    :cond_29
    iget-object v0, p0, Lcn/dbox/core/d/b;->t:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/dbox/core/d/b;->u:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 590
    sget-object v0, Lcn/dbox/core/d/b;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/dbox/core/d/b;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    return-void
.end method
