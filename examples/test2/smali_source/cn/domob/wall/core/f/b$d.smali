.class Lcn/domob/wall/core/f/b$d;
.super Lcn/domob/wall/core/f/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic e:Lcn/domob/wall/core/f/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 7

    .prologue
    .line 291
    iput-object p1, p0, Lcn/domob/wall/core/f/b$d;->e:Lcn/domob/wall/core/f/b;

    .line 292
    sget-object v0, Lcn/domob/wall/core/f/b$n;->b:Lcn/domob/wall/core/f/b$n;

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/domob/wall/core/f/b$a;-><init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$n;)V

    .line 293
    iget-object v0, p0, Lcn/domob/wall/core/f/b$d;->a:Ljava/util/HashMap;

    const-string v1, "vc"

    invoke-virtual {p3}, Lcn/domob/wall/core/bean/AdInfo;->getAdVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcn/domob/wall/core/f/b$d;->a:Ljava/util/HashMap;

    const-string v1, "vn"

    invoke-virtual {p3}, Lcn/domob/wall/core/bean/AdInfo;->getAdVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lcn/domob/wall/core/f/b$d;->a:Ljava/util/HashMap;

    const-string v1, "pkg"

    invoke-virtual {p3}, Lcn/domob/wall/core/bean/AdInfo;->getAdPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lcn/domob/wall/core/f/b$d;->a:Ljava/util/HashMap;

    const-string v1, "id"

    invoke-virtual {p3}, Lcn/domob/wall/core/bean/AdInfo;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    return-void
.end method


# virtual methods
.method a(Lcn/domob/wall/core/DService$ReportDownLoadType;)V
    .registers 5

    .prologue
    .line 303
    const-string v0, ""

    .line 304
    sget-object v1, Lcn/domob/wall/core/f/b$1;->b:[I

    invoke-virtual {p1}, Lcn/domob/wall/core/DService$ReportDownLoadType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    .line 329
    :goto_d
    iget-object v1, p0, Lcn/domob/wall/core/f/b$d;->a:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-void

    .line 306
    :pswitch_15
    const-string v0, "download_start"

    goto :goto_d

    .line 309
    :pswitch_18
    const-string v0, "download_repeat"

    goto :goto_d

    .line 312
    :pswitch_1b
    const-string v0, "download_finish"

    goto :goto_d

    .line 315
    :pswitch_1e
    const-string v0, "download_failed"

    goto :goto_d

    .line 318
    :pswitch_21
    const-string v0, "download_cancel"

    goto :goto_d

    .line 321
    :pswitch_24
    const-string v0, "install_success"

    goto :goto_d

    .line 324
    :pswitch_27
    const-string v0, "run"

    goto :goto_d

    .line 304
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method
