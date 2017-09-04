.class Lcn/domob/android/ads/r$1;
.super Lcn/domob/android/f/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/r;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/r;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/r;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcn/domob/android/ads/r$1;->a:Lcn/domob/android/ads/r;

    invoke-direct {p0}, Lcn/domob/android/f/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 68
    .line 69
    if-eqz p1, :cond_26

    .line 70
    invoke-static {}, Lcn/domob/android/ads/r;->b()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtraInfo resp string:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcn/domob/android/ads/r$1;->a:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->a(Lcn/domob/android/ads/r;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/domob/android/ads/s;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 75
    :goto_25
    return-void

    .line 73
    :cond_26
    invoke-static {}, Lcn/domob/android/ads/r;->b()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "ExtraInfo respStr is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_25
.end method
