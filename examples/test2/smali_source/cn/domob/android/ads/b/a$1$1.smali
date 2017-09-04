.class Lcn/domob/android/ads/b/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/b/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/b/a$1;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/b/a$1;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcn/domob/android/ads/b/a$1$1;->a:Lcn/domob/android/ads/b/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/a;)V
    .registers 4

    .prologue
    .line 104
    invoke-static {}, Lcn/domob/android/ads/b/a;->n()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Finished to load MRAID banner view."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcn/domob/android/ads/b/a$1$1;->a:Lcn/domob/android/ads/b/a$1;

    iget-object v0, v0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    invoke-static {v0}, Lcn/domob/android/ads/b/a;->d(Lcn/domob/android/ads/b/a;)V

    .line 106
    return-void
.end method

.method public b(Lcn/domob/android/ads/a;)V
    .registers 5

    .prologue
    .line 110
    invoke-static {}, Lcn/domob/android/ads/b/a;->n()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "FAILED to load domob banner view."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcn/domob/android/ads/b/a$1$1;->a:Lcn/domob/android/ads/b/a$1;

    iget-object v0, v0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v2, "Creative load failed."

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/b/a;->b(Lcn/domob/android/ads/b/a;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public c(Lcn/domob/android/ads/a;)V
    .registers 5

    .prologue
    .line 98
    iget-object v0, p0, Lcn/domob/android/ads/b/a$1$1;->a:Lcn/domob/android/ads/b/a$1;

    iget-object v0, v0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v2, "Creative load timeout."

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/b/a;->a(Lcn/domob/android/ads/b/a;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    .line 100
    return-void
.end method
