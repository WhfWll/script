.class public Lcn/domob/wall/core/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/a/a$a;
.implements Lcn/domob/wall/core/a/b$a;
.implements Lcn/domob/wall/core/download/a$a;
.implements Lcn/domob/wall/core/download/d$a;


# static fields
.field private static a:Lcn/domob/wall/core/h/d;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcn/domob/wall/core/b;

.field private f:Landroid/content/Context;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/a;->a:Lcn/domob/wall/core/h/d;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcn/domob/wall/core/b;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v0, p0, Lcn/domob/wall/core/a;->b:Z

    .line 52
    iput-boolean v0, p0, Lcn/domob/wall/core/a;->c:Z

    .line 53
    iput-boolean v0, p0, Lcn/domob/wall/core/a;->d:Z

    .line 57
    iput-boolean v0, p0, Lcn/domob/wall/core/a;->g:Z

    .line 60
    iput-object p2, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    .line 61
    iput-object p1, p0, Lcn/domob/wall/core/a;->f:Landroid/content/Context;

    .line 62
    return-void
.end method

.method static synthetic a(Lcn/domob/wall/core/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/wall/core/a;->f:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcn/domob/wall/core/a;->b:Z

    .line 308
    iput-boolean v0, p0, Lcn/domob/wall/core/a;->c:Z

    .line 309
    iput-boolean v0, p0, Lcn/domob/wall/core/a;->d:Z

    .line 310
    return-void
.end method

.method private a(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 248
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 252
    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 254
    sget-object v1, Lcn/domob/wall/core/a;->a:Lcn/domob/wall/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "overrideUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 255
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    sget-object v0, Lcn/domob/wall/core/a;->a:Lcn/domob/wall/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open landing page with URL:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcn/domob/wall/core/a;->f:Landroid/content/Context;

    .line 262
    if-eqz v1, :cond_63

    .line 263
    invoke-direct {p0}, Lcn/domob/wall/core/a;->a()V

    .line 264
    new-instance v0, Lcn/domob/wall/core/a/b;

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/domob/wall/core/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/wall/core/a/b$a;Lcn/domob/wall/core/bean/AdInfo;)V

    invoke-virtual {v0}, Lcn/domob/wall/core/a/b;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_63
    :goto_63
    move v0, v6

    .line 300
    :goto_64
    return v0

    .line 267
    :cond_65
    const-string v2, "download"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 269
    iget-boolean v1, p0, Lcn/domob/wall/core/a;->g:Z

    if-nez v1, :cond_78

    .line 270
    iget-object v1, p0, Lcn/domob/wall/core/a;->f:Landroid/content/Context;

    invoke-static {v1, p0}, Lcn/domob/wall/core/download/a;->a(Landroid/content/Context;Lcn/domob/wall/core/download/a$a;)V

    .line 271
    iput-boolean v6, p0, Lcn/domob/wall/core/a;->g:Z

    .line 273
    :cond_78
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    new-instance v2, Lcn/domob/wall/core/download/d;

    iget-object v3, p0, Lcn/domob/wall/core/a;->f:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p1, p0}, Lcn/domob/wall/core/download/d;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/download/d$a;)V

    .line 278
    iget-object v0, p0, Lcn/domob/wall/core/a;->f:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/download/d;->a(Landroid/content/Context;)V

    .line 279
    sget-object v0, Lcn/domob/wall/core/a;->a:Lcn/domob/wall/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download app with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    goto :goto_63

    .line 280
    :cond_a9
    const-string v2, "launch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 281
    new-instance v1, Lcn/domob/wall/core/a/a;

    iget-object v2, p0, Lcn/domob/wall/core/a;->f:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p0, p1}, Lcn/domob/wall/core/a/a;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcn/domob/wall/core/a/a$a;Lcn/domob/wall/core/bean/AdInfo;)V

    invoke-virtual {v1}, Lcn/domob/wall/core/a/a;->a()V

    goto :goto_63

    .line 283
    :cond_bc
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 286
    iget-object v0, p0, Lcn/domob/wall/core/a;->f:Landroid/content/Context;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/h/f;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 288
    if-nez v0, :cond_db

    .line 289
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 294
    :cond_db
    iget-object v1, p0, Lcn/domob/wall/core/a;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_63

    .line 296
    :cond_e1
    sget-object v0, Lcn/domob/wall/core/a;->a:Lcn/domob/wall/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handle unknown action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x0

    goto/16 :goto_64
.end method

.method private b()Z
    .registers 2

    .prologue
    .line 317
    iget-boolean v0, p0, Lcn/domob/wall/core/a;->b:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcn/domob/wall/core/a;->d:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcn/domob/wall/core/a;->c:Z

    if-nez v0, :cond_e

    .line 318
    const/4 v0, 0x1

    .line 321
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private v(Lcn/domob/wall/core/bean/AdInfo;)Lcn/domob/wall/core/f/b$k;
    .registers 6

    .prologue
    .line 189
    invoke-virtual {p1}, Lcn/domob/wall/core/bean/AdInfo;->getAdStyle()Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    move-result-object v0

    .line 190
    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$AdStyle;->BANNER:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    if-ne v0, v1, :cond_b

    .line 191
    sget-object v0, Lcn/domob/wall/core/f/b$k;->b:Lcn/domob/wall/core/f/b$k;

    .line 196
    :goto_a
    return-object v0

    .line 192
    :cond_b
    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$AdStyle;->HOUSE_AD:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    if-eq v0, v1, :cond_13

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$AdStyle;->XX:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    if-ne v0, v1, :cond_16

    .line 193
    :cond_13
    sget-object v0, Lcn/domob/wall/core/f/b$k;->c:Lcn/domob/wall/core/f/b$k;

    goto :goto_a

    .line 195
    :cond_16
    sget-object v1, Lcn/domob/wall/core/a;->a:Lcn/domob/wall/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad style error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcn/domob/wall/core/f/b$k;->a:Lcn/domob/wall/core/f/b$k;

    goto :goto_a
.end method


# virtual methods
.method a(Lcn/domob/wall/core/DService$EWallReportType;)V
    .registers 5

    .prologue
    .line 179
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/DService$EWallReportType;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method a(Lcn/domob/wall/core/DService$ReportUserActionType;)V
    .registers 4

    .prologue
    .line 151
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    invoke-virtual {v0, v1, p1}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/DService$ReportUserActionType;)V

    .line 152
    return-void
.end method

.method a(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcn/domob/wall/core/a;->g(Lcn/domob/wall/core/bean/AdInfo;)Z

    .line 72
    return-void
.end method

.method a(Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V
    .registers 5

    .prologue
    .line 160
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    invoke-virtual {v0, v1, p1, p2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V

    .line 162
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/webkit/WebView;Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 4

    .prologue
    .line 396
    return-void
.end method

.method public a(Ljava/lang/String;Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 6

    .prologue
    .line 334
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/f/b$m;->c:Lcn/domob/wall/core/f/b$m;

    invoke-virtual {v0, v1, p2, v2, p1}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$m;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 10

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 403
    sget-object v0, Lcn/domob/wall/core/a;->a:Lcn/domob/wall/core/h/d;

    const-string v1, "LandingPage \u5185\u4e0b\u8f7d\uff0c\u5730\u5740\u4e3a%s\uff0cinfoURL\u4e3a%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 408
    if-eqz p2, :cond_58

    :try_start_16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_58

    .line 409
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-static {v0}, Lcn/domob/wall/core/h/f;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 413
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 414
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_35
    invoke-static {v0}, Lcn/domob/wall/core/h/f;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/domob/wall/core/h/f;->a()Ljava/lang/String;

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

    .line 425
    :goto_54
    invoke-direct {p0, p3, v0}, Lcn/domob/wall/core/a;->a(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Z

    .line 432
    :goto_57
    return-void

    .line 421
    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/domob/wall/core/h/f;->a()Ljava/lang/String;

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

    .line 426
    :catch_7a
    move-exception v0

    .line 427
    sget-object v0, Lcn/domob/wall/core/a;->a:Lcn/domob/wall/core/h/d;

    const-string v1, "\u89e3\u6790LandingPage\u4e2d\u4e0b\u8f7d\u51fa\u73b0\u9519\u8bef\uff0c\u5730\u5740\u4e3a%s\uff0cinfoURL\u4e3a%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    goto :goto_57
.end method

.method a(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    invoke-virtual {v0, v1, p1}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Ljava/util/ArrayList;)V

    .line 171
    return-void
.end method

.method b(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 2

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcn/domob/wall/core/a;->g(Lcn/domob/wall/core/bean/AdInfo;)Z

    .line 83
    return-void
.end method

.method public b(Ljava/lang/String;Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 6

    .prologue
    .line 343
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcn/domob/wall/core/a;->a(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 344
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/f/b$m;->d:Lcn/domob/wall/core/f/b$m;

    invoke-virtual {v0, v1, p2, v2, p1}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$m;Ljava/lang/String;)V

    .line 355
    :goto_11
    return-void

    .line 348
    :cond_12
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/f/b$m;->e:Lcn/domob/wall/core/f/b$m;

    invoke-virtual {v0, v1, p2, v2, p1}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$m;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 352
    :catch_1e
    move-exception v0

    .line 353
    sget-object v1, Lcn/domob/wall/core/a;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method c(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 4

    .prologue
    .line 92
    invoke-virtual {p1}, Lcn/domob/wall/core/bean/AdInfo;->isAdActualPositionAvailable()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 93
    invoke-virtual {p1}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    move-result-object v0

    sget-object v1, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->DOWNLOAD:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcn/domob/wall/core/bean/AdInfo;->isShowDetail()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 104
    :goto_18
    return-void

    .line 97
    :cond_19
    invoke-virtual {p0, p1}, Lcn/domob/wall/core/a;->g(Lcn/domob/wall/core/bean/AdInfo;)Z

    goto :goto_18

    .line 101
    :cond_1d
    const-string v0, "DrwSDK"

    const-string v1, "Please implement the method setAdActualPosition(int position) of AdInfo, otherwise it is impossible to achieve onClickWallItem(AdInfo itemInfo)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method d(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 5

    .prologue
    .line 113
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/f/b$k;->e:Lcn/domob/wall/core/f/b$k;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$k;)V

    .line 115
    return-void
.end method

.method e(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 5

    .prologue
    .line 124
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/f/b$k;->d:Lcn/domob/wall/core/f/b$k;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$k;)V

    .line 126
    return-void
.end method

.method f(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 5

    .prologue
    .line 135
    invoke-virtual {p1}, Lcn/domob/wall/core/bean/AdInfo;->isAdActualPositionAvailable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 136
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    invoke-direct {p0, p1}, Lcn/domob/wall/core/a;->v(Lcn/domob/wall/core/bean/AdInfo;)Lcn/domob/wall/core/f/b$k;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$k;)V

    .line 143
    :goto_13
    return-void

    .line 140
    :cond_14
    const-string v0, "DrwSDK"

    const-string v1, "Please implement the method setAdActualPosition(int position) of AdInfo, otherwise it is impossible to achieve onClickWallItem(AdInfo itemInfo)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method g(Lcn/domob/wall/core/bean/AdInfo;)Z
    .registers 7

    .prologue
    .line 206
    invoke-virtual {p1}, Lcn/domob/wall/core/bean/AdInfo;->getAdActionURL()Ljava/lang/String;

    move-result-object v1

    .line 209
    :try_start_4
    invoke-static {}, Lcn/domob/wall/core/h/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 210
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {}, Lcn/domob/wall/core/h/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 213
    sget-object v2, Lcn/domob/wall/core/a;->a:Lcn/domob/wall/core/h/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheme xxx action scheme ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 214
    invoke-direct {p0, p1, v1}, Lcn/domob/wall/core/a;->a(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Z

    move-result v0

    .line 235
    :goto_3c
    return v0

    .line 216
    :cond_3d
    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 219
    iget-object v0, p0, Lcn/domob/wall/core/a;->f:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/domob/wall/core/h/f;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 221
    if-nez v0, :cond_5c

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    :cond_5c
    iget-object v1, p0, Lcn/domob/wall/core/a;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_61} :catch_63

    .line 235
    :cond_61
    const/4 v0, 0x1

    goto :goto_3c

    .line 229
    :catch_63
    move-exception v0

    .line 230
    sget-object v1, Lcn/domob/wall/core/a;->a:Lcn/domob/wall/core/h/d;

    const-string v2, "Exception in click."

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    .line 231
    sget-object v1, Lcn/domob/wall/core/a;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 232
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method public h(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 6

    .prologue
    .line 327
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/f/b$m;->b:Lcn/domob/wall/core/f/b$m;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$m;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public i(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 5

    .prologue
    .line 360
    invoke-direct {p0}, Lcn/domob/wall/core/a;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 361
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/f/b$j;->b:Lcn/domob/wall/core/f/b$j;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$j;)V

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/a;->b:Z

    .line 365
    :cond_14
    return-void
.end method

.method public j(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 5

    .prologue
    .line 369
    invoke-direct {p0}, Lcn/domob/wall/core/a;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 370
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/f/b$j;->c:Lcn/domob/wall/core/f/b$j;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$j;)V

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/a;->d:Z

    .line 374
    :cond_14
    return-void
.end method

.method public k(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 5

    .prologue
    .line 378
    invoke-direct {p0}, Lcn/domob/wall/core/a;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 379
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/f/b$j;->d:Lcn/domob/wall/core/f/b$j;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$j;)V

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/a;->c:Z

    .line 383
    :cond_14
    return-void
.end method

.method public l(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 5

    .prologue
    .line 387
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/f/b$j;->e:Lcn/domob/wall/core/f/b$j;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$j;)V

    .line 390
    return-void
.end method

.method public m(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 5

    .prologue
    .line 437
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_FINISH:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V

    .line 439
    return-void
.end method

.method public n(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 5

    .prologue
    .line 443
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_FAILED:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V

    .line 446
    return-void
.end method

.method public o(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 5

    .prologue
    .line 450
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_START:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V

    .line 452
    return-void
.end method

.method public p(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 5

    .prologue
    .line 456
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_CANCEL:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V

    .line 459
    return-void
.end method

.method public q(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 5

    .prologue
    .line 463
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/DService$ReportDownLoadType;->DL_REPEAT:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V

    .line 465
    iget-object v0, p0, Lcn/domob/wall/core/a;->f:Landroid/content/Context;

    if-eqz v0, :cond_1b

    .line 466
    iget-object v0, p0, Lcn/domob/wall/core/a;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/wall/core/a$1;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/a$1;-><init>(Lcn/domob/wall/core/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 474
    :cond_1b
    return-void
.end method

.method public r(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 2

    .prologue
    .line 479
    return-void
.end method

.method public s(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 3

    .prologue
    .line 483
    invoke-static {}, Lcn/domob/wall/core/download/a;->a()Lcn/domob/wall/core/download/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/download/a;->a(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 484
    return-void
.end method

.method public t(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 5

    .prologue
    .line 488
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/DService$ReportDownLoadType;->INSTALL_SUCCESS:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V

    .line 490
    return-void
.end method

.method public u(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 5

    .prologue
    .line 494
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a;->e:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/DService$ReportDownLoadType;->AUTO_RUN:Lcn/domob/wall/core/DService$ReportDownLoadType;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/DService$ReportDownLoadType;)V

    .line 496
    return-void
.end method
