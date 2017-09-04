.class Lcn/domob/android/ads/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/g/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/g;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/g;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/g;)V
    .registers 2

    .prologue
    .line 825
    iput-object p1, p0, Lcn/domob/android/ads/g$1;->a:Lcn/domob/android/ads/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/g/a/a$a;)V
    .registers 4

    .prologue
    .line 838
    iget-object v0, p0, Lcn/domob/android/ads/g$1;->a:Lcn/domob/android/ads/g;

    invoke-static {v0}, Lcn/domob/android/ads/g;->b(Lcn/domob/android/ads/g;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 839
    iget-object v0, p0, Lcn/domob/android/ads/g$1;->a:Lcn/domob/android/ads/g;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->NETWORK_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    .line 841
    :cond_f
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 829
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/h;->a(Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcn/domob/android/ads/g$1;->a:Lcn/domob/android/ads/g;

    invoke-static {v0}, Lcn/domob/android/ads/g;->b(Lcn/domob/android/ads/g;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 831
    iget-object v0, p0, Lcn/domob/android/ads/g$1;->a:Lcn/domob/android/ads/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->c(Z)V

    .line 832
    iget-object v0, p0, Lcn/domob/android/ads/g$1;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->C()V

    .line 834
    :cond_1a
    return-void
.end method
