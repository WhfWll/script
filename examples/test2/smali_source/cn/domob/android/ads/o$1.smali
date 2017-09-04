.class Lcn/domob/android/ads/o$1;
.super Lcn/domob/android/f/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/o;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/o;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/o;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcn/domob/android/ads/o$1;->a:Lcn/domob/android/ads/o;

    invoke-direct {p0}, Lcn/domob/android/f/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 70
    .line 72
    if-eqz p1, :cond_3b

    .line 73
    invoke-static {}, Lcn/domob/android/ads/o;->b()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config resp string:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcn/domob/android/ads/p;

    invoke-direct {v0, p1}, Lcn/domob/android/ads/p;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Lcn/domob/android/ads/p;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/b/a;->a(Ljava/util/ArrayList;)V

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcn/domob/android/ads/o;->a:Z

    .line 84
    :goto_2b
    iget-object v0, p0, Lcn/domob/android/ads/o$1;->a:Lcn/domob/android/ads/o;

    invoke-static {v0}, Lcn/domob/android/ads/o;->a(Lcn/domob/android/ads/o;)Lcn/domob/android/ads/g;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/o$1;->a:Lcn/domob/android/ads/o;

    invoke-static {v1}, Lcn/domob/android/ads/o;->a(Lcn/domob/android/ads/o;)Lcn/domob/android/ads/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/g;)V

    .line 85
    return-void

    .line 82
    :cond_3b
    invoke-static {}, Lcn/domob/android/ads/o;->b()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Config respStr is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_2b
.end method
