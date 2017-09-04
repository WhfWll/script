.class Lcn/domob/android/ads/B$1;
.super Lcn/domob/android/f/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/B;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/B;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    invoke-direct {p0}, Lcn/domob/android/f/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/f/h;)V
    .registers 7

    .prologue
    .line 125
    invoke-virtual {p1}, Lcn/domob/android/f/h;->d()I

    move-result v0

    .line 126
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_9

    .line 172
    :goto_8
    return-void

    .line 129
    :cond_9
    invoke-virtual {p1}, Lcn/domob/android/f/h;->a()[B

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Lcn/domob/android/f/h;->c()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {}, Lcn/domob/android/ads/B;->c()Lcn/domob/android/i/f;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download finish:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 132
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcn/domob/android/ads/B$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcn/domob/android/ads/B$1$1;-><init>(Lcn/domob/android/ads/B$1;[BLjava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_8
.end method
