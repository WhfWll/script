.class public Lcn/dbox/core/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/core/a/a$a;
.implements Lcn/dbox/core/a/c$b;
.implements Lcn/dbox/core/d/a$a;
.implements Lcn/dbox/core/d/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/core/a$b;,
        Lcn/dbox/core/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "vibrate"

.field public static final b:Ljava/lang/String; = "adwall"

.field private static c:Lcn/dbox/core/h/d; = null

.field private static final j:Ljava/lang/String; = "wtai://wp/mc;"

.field private static final k:Ljava/lang/String; = "report"

.field private static final l:Ljava/lang/String; = "imp"

.field private static final m:Ljava/lang/String; = "event"

.field private static final n:Ljava/lang/String; = "clk"

.field private static final o:Ljava/lang/String; = "visit"

.field private static final p:Ljava/lang/String; = "phase"

.field private static final q:Ljava/lang/String; = "url"

.field private static final r:Ljava/lang/String; = "pattern"


# instance fields
.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcn/dbox/core/c;

.field private h:Landroid/content/Context;

.field private i:Z

.field private s:Lcn/dbox/core/b$j;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcn/dbox/core/c;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcn/dbox/core/a;->d:Z

    .line 64
    iput-boolean v0, p0, Lcn/dbox/core/a;->e:Z

    .line 65
    iput-boolean v0, p0, Lcn/dbox/core/a;->f:Z

    .line 69
    iput-boolean v0, p0, Lcn/dbox/core/a;->i:Z

    .line 72
    iput-object p2, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    .line 73
    iput-object p1, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    .line 74
    return-void
.end method

.method static synthetic a(Lcn/dbox/core/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 558
    iput-boolean v0, p0, Lcn/dbox/core/a;->d:Z

    .line 559
    iput-boolean v0, p0, Lcn/dbox/core/a;->e:Z

    .line 560
    iput-boolean v0, p0, Lcn/dbox/core/a;->f:Z

    .line 561
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 532
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 534
    if-eqz p0, :cond_65

    .line 535
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 536
    array-length v4, v3

    move v1, v0

    :goto_10
    if-ge v1, v4, :cond_65

    aget-object v0, v3, v1

    .line 537
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 539
    :try_start_1a
    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_37

    .line 540
    const/4 v5, 0x0

    aget-object v5, v0, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v0, v0, v6

    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    :goto_33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 542
    :cond_37
    const/4 v5, 0x0

    aget-object v0, v0, v5

    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_45} :catch_46

    goto :goto_33

    .line 544
    :catch_46
    move-exception v0

    .line 545
    sget-object v5, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    invoke-virtual {v5, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 546
    sget-object v0, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL decode params String error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    goto :goto_33

    .line 551
    :cond_65
    return-object v2
.end method

.method private b()Z
    .registers 2

    .prologue
    .line 568
    iget-boolean v0, p0, Lcn/dbox/core/a;->d:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcn/dbox/core/a;->f:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcn/dbox/core/a;->e:Z

    if-nez v0, :cond_e

    .line 569
    const/4 v0, 0x1

    .line 572
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private b(Lcn/dbox/core/bean/a;Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 338
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 342
    const-string v4, "inapp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 344
    sget-object v1, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "overrideUri="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 345
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    sget-object v1, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Open landing page with URL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 352
    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    if-nez v0, :cond_93

    .line 355
    const-string v0, "push"

    .line 360
    :goto_5a
    const-string v1, "present"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 361
    sget-object v6, Lcn/dbox/core/a/b$a;->c:Lcn/dbox/core/a/b$a;

    .line 365
    :goto_64
    sget-object v1, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Open landing page with type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    .line 367
    if-eqz v1, :cond_91

    .line 368
    invoke-direct {p0}, Lcn/dbox/core/a;->a()V

    .line 369
    new-instance v0, Lcn/dbox/core/a/b;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcn/dbox/core/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/dbox/core/a/c$b;Lcn/dbox/core/bean/a;Lcn/dbox/core/a/b$a;)V

    invoke-virtual {v0}, Lcn/dbox/core/a/b;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_91
    :goto_91
    move v0, v7

    .line 528
    :goto_92
    return v0

    .line 357
    :cond_93
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5a

    .line 363
    :cond_9a
    sget-object v6, Lcn/dbox/core/a/b$a;->b:Lcn/dbox/core/a/b$a;

    goto :goto_64

    .line 372
    :cond_9d
    const-string v4, "download"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10c

    .line 374
    iget-boolean v1, p0, Lcn/dbox/core/a;->i:Z

    if-nez v1, :cond_b0

    .line 375
    iget-object v1, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    invoke-static {v1, p0}, Lcn/dbox/core/d/a;->a(Landroid/content/Context;Lcn/dbox/core/d/a$a;)V

    .line 376
    iput-boolean v7, p0, Lcn/dbox/core/a;->i:Z

    .line 378
    :cond_b0
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    const-string v2, "pkg"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-virtual {p1, v2}, Lcn/dbox/core/bean/a;->a(Ljava/lang/String;)V

    .line 383
    sget-object v3, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadURL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 384
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 385
    new-instance v2, Lcn/dbox/core/d/e;

    iget-object v3, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p1, p0}, Lcn/dbox/core/d/e;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcn/dbox/core/bean/a;Lcn/dbox/core/d/e$a;)V

    .line 387
    iget-object v0, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcn/dbox/core/d/e;->a(Landroid/content/Context;)V

    .line 388
    sget-object v0, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download app with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    goto :goto_91

    .line 389
    :cond_10c
    const-string v4, "launch"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_120

    .line 390
    new-instance v1, Lcn/dbox/core/a/a;

    iget-object v2, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p0, p1}, Lcn/dbox/core/a/a;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcn/dbox/core/a/a$a;Lcn/dbox/core/bean/a;)V

    invoke-virtual {v1}, Lcn/dbox/core/a/a;->a()V

    goto/16 :goto_91

    .line 392
    :cond_120
    const-string v4, "http"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14f

    .line 395
    iget-object v0, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/dbox/core/h/f;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 397
    if-nez v0, :cond_13f

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 403
    :cond_13f
    iget-object v1, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 404
    iget-object v0, p0, Lcn/dbox/core/a;->s:Lcn/dbox/core/b$j;

    if-eqz v0, :cond_91

    .line 405
    iget-object v0, p0, Lcn/dbox/core/a;->s:Lcn/dbox/core/b$j;

    invoke-interface {v0}, Lcn/dbox/core/b$j;->a()V

    goto/16 :goto_91

    .line 407
    :cond_14f
    const-string v4, "tel:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17f

    const-string v4, "voicemail:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17f

    const-string v4, "sms:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17f

    const-string v4, "mailto:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17f

    const-string v4, "geo:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17f

    const-string v4, "wtai://wp/mc;"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f8

    .line 411
    :cond_17f
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 413
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 415
    const-string v2, "wtai://wp/mc;"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    .line 416
    sget-object v0, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    const-string v2, "Create intent for: wtai://wp/mc;"

    invoke-virtual {v0, v2}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 418
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "wtai://wp/mc;"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 425
    :cond_1c6
    :try_start_1c6
    iget-object v2, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 426
    iget-object v0, p0, Lcn/dbox/core/a;->s:Lcn/dbox/core/b$j;

    if-eqz v0, :cond_91

    .line 427
    iget-object v0, p0, Lcn/dbox/core/a;->s:Lcn/dbox/core/b$j;

    invoke-interface {v0}, Lcn/dbox/core/b$j;->a()V
    :try_end_1d4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1c6 .. :try_end_1d4} :catch_1d6

    goto/16 :goto_91

    .line 429
    :catch_1d6
    move-exception v0

    .line 430
    const-string v0, "ClickAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not handle intent with URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Is this intent unsupported on your phone?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 434
    goto/16 :goto_92

    .line 437
    :cond_1f8
    const-string v4, "report"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2dc

    .line 442
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 443
    if-eqz v2, :cond_20e

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_218

    .line 444
    :cond_20e
    sget-object v0, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    const-string v2, "There is no report type."

    invoke-virtual {v0, v2}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    move v0, v1

    .line 445
    goto/16 :goto_92

    .line 447
    :cond_218
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 448
    const-string v2, "imp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25c

    .line 449
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-static {v0}, Lcn/dbox/core/h/f;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 452
    const-string v0, "s"

    .line 453
    const-string v1, "phase"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_243

    .line 454
    const-string v0, "phase"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    const-string v1, "phase"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :cond_243
    const-string v1, "phase"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    const-string v4, "ac"

    iget-object v2, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    invoke-virtual {v2}, Lcn/dbox/core/c;->l()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_91

    .line 459
    :cond_25c
    const-string v2, "event"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_296

    .line 460
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-static {v0}, Lcn/dbox/core/h/f;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 463
    iget-object v0, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    invoke-virtual {v0}, Lcn/dbox/core/c;->n()Ljava/lang/String;

    move-result-object v5

    .line 464
    const-string v0, "url"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_288

    .line 465
    const-string v0, "url"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 466
    const-string v1, "url"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v0

    .line 469
    :cond_288
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    const-string v4, "ac"

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_91

    .line 470
    :cond_296
    const-string v2, "clk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ba

    .line 471
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    .line 472
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    invoke-static {v2}, Lcn/dbox/core/a;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "ac"

    iget-object v2, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    invoke-virtual {v2}, Lcn/dbox/core/c;->j()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_91

    .line 473
    :cond_2ba
    const-string v2, "visit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d3

    .line 475
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v1

    iget-object v2, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, v3}, Lcn/dbox/core/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_91

    .line 478
    :cond_2d3
    sget-object v0, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    const-string v1, "Unknown reprot type."

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    goto/16 :goto_91

    .line 480
    :cond_2dc
    const-string v3, "vibrate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34c

    .line 486
    iget-object v2, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    invoke-static {v2}, Lcn/dbox/core/h/e;->G(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2f6

    .line 487
    sget-object v0, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    const-string v2, "Vibration function can not be achieved, because there is no authority or device does not support"

    invoke-virtual {v0, v2}, Lcn/dbox/core/h/d;->d(Ljava/lang/String;)V

    move v0, v1

    .line 488
    goto/16 :goto_92

    .line 490
    :cond_2f6
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/dbox/core/h/f;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 492
    const-string v2, "pattern"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 493
    if-eqz v0, :cond_343

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_343

    .line 494
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 495
    array-length v0, v2

    new-array v3, v0, [J

    move v0, v1

    .line 497
    :goto_31a
    :try_start_31a
    array-length v4, v2

    if-ge v0, v4, :cond_328

    .line 498
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_31a

    .line 501
    :cond_328
    iget-object v0, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 503
    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_336
    .catch Ljava/lang/Exception; {:try_start_31a .. :try_end_336} :catch_338

    goto/16 :goto_91

    .line 504
    :catch_338
    move-exception v0

    .line 505
    sget-object v0, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    const-string v2, "action vibrate, parse data error or other"

    invoke-virtual {v0, v2}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    move v0, v1

    .line 506
    goto/16 :goto_92

    .line 509
    :cond_343
    sget-object v0, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    const-string v1, "action vibrate, pattern is empty"

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    goto/16 :goto_91

    .line 511
    :cond_34c
    const-string v0, "adwall"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_373

    .line 514
    :try_start_354
    iget-object v0, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    invoke-static {v0}, Lcn/dbox/core/h/f;->a(Lcn/dbox/core/c;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 515
    iget-object v0, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    invoke-virtual {v0}, Lcn/dbox/core/c;->t()V
    :try_end_361
    .catch Ljava/lang/Exception; {:try_start_354 .. :try_end_361} :catch_363
    .catch Ljava/lang/Error; {:try_start_354 .. :try_end_361} :catch_36b

    goto/16 :goto_91

    .line 517
    :catch_363
    move-exception v0

    .line 518
    sget-object v1, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_91

    .line 519
    :catch_36b
    move-exception v0

    .line 520
    sget-object v1, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_91

    .line 524
    :cond_373
    sget-object v0, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handle unknown action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    move v0, v1

    .line 525
    goto/16 :goto_92
.end method


# virtual methods
.method public a(Lcn/dbox/core/b$f;Lcn/dbox/core/bean/d;Lcn/dbox/core/b$e;)V
    .registers 6

    .prologue
    .line 136
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/b$f;Lcn/dbox/core/bean/d;Lcn/dbox/core/b$e;)V

    .line 137
    return-void
.end method

.method public a(Lcn/dbox/core/b$j;)V
    .registers 2

    .prologue
    .line 773
    iput-object p1, p0, Lcn/dbox/core/a;->s:Lcn/dbox/core/b$j;

    .line 774
    return-void
.end method

.method public a(Lcn/dbox/core/b$o;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 127
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/b$o;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public a(Lcn/dbox/core/bean/Entrance$EntryReportType;)V
    .registers 4

    .prologue
    .line 98
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    invoke-virtual {v0, v1, p1}, Lcn/dbox/core/f/a;->b(Lcn/dbox/core/c;Lcn/dbox/core/bean/Entrance$EntryReportType;)V

    .line 99
    return-void
.end method

.method a(Lcn/dbox/core/bean/a;)V
    .registers 3

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/dbox/core/a;->a(Lcn/dbox/core/bean/a;Ljava/lang/String;)Z

    .line 87
    return-void
.end method

.method public a(Lcn/dbox/core/bean/a;Lcn/dbox/core/b$a;Lcn/dbox/core/b$d;)V
    .registers 6

    .prologue
    .line 167
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$a;Lcn/dbox/core/b$d;)V

    .line 168
    return-void
.end method

.method public a(Lcn/dbox/core/bean/a;Lcn/dbox/core/b$b;)V
    .registers 5

    .prologue
    .line 188
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    invoke-virtual {v0, v1, p1, p2}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$b;)V

    .line 189
    return-void
.end method

.method public a(Lcn/dbox/core/bean/d;Lcn/dbox/core/b$b;)V
    .registers 5

    .prologue
    .line 145
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    invoke-virtual {v0, v1, p1, p2}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/d;Lcn/dbox/core/b$b;)V

    .line 146
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 107
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    invoke-virtual {v0, v1, p1}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/webkit/WebView;Lcn/dbox/core/bean/a;)V
    .registers 7

    .prologue
    .line 650
    :try_start_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 652
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 653
    invoke-static {v1}, Lcn/dbox/core/h/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 668
    :cond_12
    :goto_12
    return-void

    .line 658
    :cond_13
    const-string v2, "domob"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {v0}, Lcn/dbox/core/h/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "inapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_29
    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 662
    invoke-direct {p0, p3, p1}, Lcn/dbox/core/a;->b(Lcn/dbox/core/bean/a;Ljava/lang/String;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_12

    .line 664
    :catch_35
    move-exception v0

    .line 665
    sget-object v1, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    const-string v2, "Error while parsing landingpage URL."

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    .line 666
    sget-object v1, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public a(Ljava/lang/String;Lcn/dbox/core/b$b;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 155
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Ljava/lang/String;Lcn/dbox/core/b$b;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public a(Ljava/lang/String;Lcn/dbox/core/bean/a;)V
    .registers 6

    .prologue
    .line 588
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    sget-object v2, Lcn/dbox/core/b$i;->c:Lcn/dbox/core/b$i;

    invoke-virtual {v0, v1, p2, v2, p1}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$i;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcn/dbox/core/bean/a;)V
    .registers 10

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 675
    sget-object v0, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    const-string v1, "LandingPage \u5185\u4e0b\u8f7d\uff0c\u5730\u5740\u4e3a%s\uff0cinfoURL\u4e3a%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 680
    if-eqz p2, :cond_58

    :try_start_16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_58

    .line 681
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 682
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 683
    invoke-static {v0}, Lcn/dbox/core/h/f;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 685
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 686
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_35
    invoke-static {v0}, Lcn/dbox/core/h/f;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/dbox/core/h/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://download?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 697
    :goto_54
    invoke-direct {p0, p3, v0}, Lcn/dbox/core/a;->b(Lcn/dbox/core/bean/a;Ljava/lang/String;)Z

    .line 704
    :goto_57
    return-void

    .line 693
    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/dbox/core/h/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://download?url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_78} :catch_7a

    move-result-object v0

    goto :goto_54

    .line 698
    :catch_7a
    move-exception v0

    .line 699
    sget-object v0, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    const-string v1, "\u89e3\u6790LandingPage\u4e2d\u4e0b\u8f7d\u51fa\u73b0\u9519\u8bef\uff0c\u5730\u5740\u4e3a%s\uff0cinfoURL\u4e3a%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    goto :goto_57
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    invoke-virtual {v0, v1, p1, p2}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public a(Lcn/dbox/core/bean/a;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 198
    .line 199
    if-eqz p1, :cond_17c

    .line 200
    invoke-virtual {p1}, Lcn/dbox/core/bean/a;->m()Ljava/lang/String;

    move-result-object v1

    .line 202
    :goto_8
    if-eqz p2, :cond_179

    .line 212
    :goto_a
    :try_start_a
    invoke-static {}, Lcn/dbox/core/h/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 213
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {}, Lcn/dbox/core/h/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 216
    sget-object v2, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheme xxx action scheme ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0, p1, p2}, Lcn/dbox/core/a;->b(Lcn/dbox/core/bean/a;Ljava/lang/String;)Z

    move-result v0

    .line 294
    :goto_42
    return v0

    .line 219
    :cond_43
    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_48} :catch_122

    move-result v1

    if-eqz v1, :cond_7a

    .line 225
    :try_start_4b
    iget-object v1, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/dbox/core/h/f;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_54} :catch_72

    move-result-object v1

    .line 231
    :goto_55
    if-nez v1, :cond_62

    .line 232
    :try_start_57
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 236
    :cond_62
    iget-object v2, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 237
    iget-object v1, p0, Lcn/dbox/core/a;->s:Lcn/dbox/core/b$j;

    if-eqz v1, :cond_70

    .line 238
    iget-object v1, p0, Lcn/dbox/core/a;->s:Lcn/dbox/core/b$j;

    invoke-interface {v1}, Lcn/dbox/core/b$j;->a()V

    .line 294
    :cond_70
    :goto_70
    const/4 v0, 0x1

    goto :goto_42

    .line 227
    :catch_72
    move-exception v1

    .line 228
    sget-object v3, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    invoke-virtual {v3, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_55

    .line 240
    :cond_7a
    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_aa

    const-string v1, "voicemail:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_aa

    const-string v1, "sms:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_aa

    const-string v1, "mailto:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_aa

    const-string v1, "geo:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_aa

    const-string v1, "wtai://wp/mc;"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_131

    .line 244
    :cond_aa
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 248
    const-string v2, "wtai://wp/mc;"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 249
    sget-object v1, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    const-string v2, "Create intent for: wtai://wp/mc;"

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 251
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "wtai://wp/mc;"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_f1} :catch_122

    .line 258
    :cond_f1
    :try_start_f1
    iget-object v2, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 259
    iget-object v1, p0, Lcn/dbox/core/a;->s:Lcn/dbox/core/b$j;

    if-eqz v1, :cond_70

    .line 260
    iget-object v1, p0, Lcn/dbox/core/a;->s:Lcn/dbox/core/b$j;

    invoke-interface {v1}, Lcn/dbox/core/b$j;->a()V
    :try_end_ff
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f1 .. :try_end_ff} :catch_101
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_ff} :catch_122

    goto/16 :goto_70

    .line 262
    :catch_101
    move-exception v1

    .line 263
    :try_start_102
    const-string v1, "ClickAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not handle intent with URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Is this intent unsupported on your phone?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_120} :catch_122

    goto/16 :goto_42

    .line 288
    :catch_122
    move-exception v1

    .line 289
    sget-object v2, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    const-string v3, "Exception in click."

    invoke-virtual {v2, v3}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    .line 290
    sget-object v2, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 271
    :cond_131
    :try_start_131
    sget-object v1, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    const-string v2, "Handle unknown intents."

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 273
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 274
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_148} :catch_122

    .line 276
    :try_start_148
    iget-object v2, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 277
    iget-object v1, p0, Lcn/dbox/core/a;->s:Lcn/dbox/core/b$j;

    if-eqz v1, :cond_70

    .line 278
    iget-object v1, p0, Lcn/dbox/core/a;->s:Lcn/dbox/core/b$j;

    invoke-interface {v1}, Lcn/dbox/core/b$j;->a()V
    :try_end_156
    .catch Landroid/content/ActivityNotFoundException; {:try_start_148 .. :try_end_156} :catch_158
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_156} :catch_122

    goto/16 :goto_70

    .line 280
    :catch_158
    move-exception v1

    .line 281
    :try_start_159
    const-string v1, "ClickAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not handle intent with URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Is this intent unsupported on your phone?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_177} :catch_122

    goto/16 :goto_70

    :cond_179
    move-object p2, v1

    goto/16 :goto_a

    :cond_17c
    move-object v1, v2

    goto/16 :goto_8
.end method

.method public b(Lcn/dbox/core/bean/Entrance$EntryReportType;)V
    .registers 4

    .prologue
    .line 117
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    invoke-virtual {v0, v1, p1}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/Entrance$EntryReportType;)V

    .line 118
    return-void
.end method

.method public b(Lcn/dbox/core/bean/a;)V
    .registers 6

    .prologue
    .line 578
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    sget-object v2, Lcn/dbox/core/b$i;->b:Lcn/dbox/core/b$i;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$i;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcn/dbox/core/a;->s:Lcn/dbox/core/b$j;

    if-eqz v0, :cond_15

    .line 581
    iget-object v0, p0, Lcn/dbox/core/a;->s:Lcn/dbox/core/b$j;

    invoke-interface {v0}, Lcn/dbox/core/b$j;->a()V

    .line 584
    :cond_15
    return-void
.end method

.method public b(Ljava/lang/String;Lcn/dbox/core/bean/a;)V
    .registers 6

    .prologue
    .line 597
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcn/dbox/core/a;->b(Lcn/dbox/core/bean/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 598
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    sget-object v2, Lcn/dbox/core/b$i;->d:Lcn/dbox/core/b$i;

    invoke-virtual {v0, v1, p2, v2, p1}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$i;Ljava/lang/String;)V

    .line 609
    :goto_11
    return-void

    .line 602
    :cond_12
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    sget-object v2, Lcn/dbox/core/b$i;->e:Lcn/dbox/core/b$i;

    invoke-virtual {v0, v1, p2, v2, p1}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$i;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 606
    :catch_1e
    move-exception v0

    .line 607
    sget-object v1, Lcn/dbox/core/a;->c:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public c(Lcn/dbox/core/bean/a;)V
    .registers 5

    .prologue
    .line 614
    invoke-direct {p0}, Lcn/dbox/core/a;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 615
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    sget-object v2, Lcn/dbox/core/b$b;->b:Lcn/dbox/core/b$b;

    invoke-virtual {v0, v1, p1, v2}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$b;)V

    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/dbox/core/a;->d:Z

    .line 619
    :cond_14
    return-void
.end method

.method public d(Lcn/dbox/core/bean/a;)V
    .registers 5

    .prologue
    .line 623
    invoke-direct {p0}, Lcn/dbox/core/a;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 624
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    sget-object v2, Lcn/dbox/core/b$b;->c:Lcn/dbox/core/b$b;

    invoke-virtual {v0, v1, p1, v2}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$b;)V

    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/dbox/core/a;->f:Z

    .line 628
    :cond_14
    return-void
.end method

.method public e(Lcn/dbox/core/bean/a;)V
    .registers 5

    .prologue
    .line 632
    invoke-direct {p0}, Lcn/dbox/core/a;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 633
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    sget-object v2, Lcn/dbox/core/b$b;->d:Lcn/dbox/core/b$b;

    invoke-virtual {v0, v1, p1, v2}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$b;)V

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/dbox/core/a;->e:Z

    .line 637
    :cond_14
    return-void
.end method

.method public f(Lcn/dbox/core/bean/a;)V
    .registers 5

    .prologue
    .line 641
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    sget-object v2, Lcn/dbox/core/b$b;->e:Lcn/dbox/core/b$b;

    invoke-virtual {v0, v1, p1, v2}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$b;)V

    .line 644
    return-void
.end method

.method public g(Lcn/dbox/core/bean/a;)V
    .registers 5

    .prologue
    .line 709
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    sget-object v2, Lcn/dbox/core/b$g;->d:Lcn/dbox/core/b$g;

    invoke-virtual {v0, v1, p1, v2}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$g;)V

    .line 711
    return-void
.end method

.method public h(Lcn/dbox/core/bean/a;)V
    .registers 5

    .prologue
    .line 715
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    sget-object v2, Lcn/dbox/core/b$g;->e:Lcn/dbox/core/b$g;

    invoke-virtual {v0, v1, p1, v2}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$g;)V

    .line 718
    return-void
.end method

.method public i(Lcn/dbox/core/bean/a;)V
    .registers 5

    .prologue
    .line 722
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    sget-object v2, Lcn/dbox/core/b$g;->b:Lcn/dbox/core/b$g;

    invoke-virtual {v0, v1, p1, v2}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$g;)V

    .line 724
    return-void
.end method

.method public j(Lcn/dbox/core/bean/a;)V
    .registers 5

    .prologue
    .line 728
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    sget-object v2, Lcn/dbox/core/b$g;->f:Lcn/dbox/core/b$g;

    invoke-virtual {v0, v1, p1, v2}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$g;)V

    .line 731
    return-void
.end method

.method public k(Lcn/dbox/core/bean/a;)V
    .registers 5

    .prologue
    .line 735
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    sget-object v2, Lcn/dbox/core/b$g;->c:Lcn/dbox/core/b$g;

    invoke-virtual {v0, v1, p1, v2}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$g;)V

    .line 737
    iget-object v0, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    if-eqz v0, :cond_1b

    .line 738
    iget-object v0, p0, Lcn/dbox/core/a;->h:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/dbox/core/a$1;

    invoke-direct {v1, p0}, Lcn/dbox/core/a$1;-><init>(Lcn/dbox/core/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 746
    :cond_1b
    return-void
.end method

.method public l(Lcn/dbox/core/bean/a;)V
    .registers 2

    .prologue
    .line 751
    return-void
.end method

.method public m(Lcn/dbox/core/bean/a;)V
    .registers 3

    .prologue
    .line 755
    invoke-static {}, Lcn/dbox/core/d/a;->a()Lcn/dbox/core/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/dbox/core/d/a;->a(Lcn/dbox/core/bean/a;)V

    .line 756
    return-void
.end method

.method public n(Lcn/dbox/core/bean/a;)V
    .registers 5

    .prologue
    .line 760
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    sget-object v2, Lcn/dbox/core/b$g;->g:Lcn/dbox/core/b$g;

    invoke-virtual {v0, v1, p1, v2}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$g;)V

    .line 762
    return-void
.end method

.method public o(Lcn/dbox/core/bean/a;)V
    .registers 5

    .prologue
    .line 766
    invoke-static {}, Lcn/dbox/core/f/a;->a()Lcn/dbox/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a;->g:Lcn/dbox/core/c;

    sget-object v2, Lcn/dbox/core/b$g;->h:Lcn/dbox/core/b$g;

    invoke-virtual {v0, v1, p1, v2}, Lcn/dbox/core/f/a;->a(Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$g;)V

    .line 768
    return-void
.end method
