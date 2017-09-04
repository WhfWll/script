.class Lcn/domob/android/ads/b/a$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/b/m$a;


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
    .line 126
    iput-object p1, p0, Lcn/domob/android/ads/b/a$1$3;->a:Lcn/domob/android/ads/b/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcn/domob/android/ads/b/a$1$3;->a:Lcn/domob/android/ads/b/a$1;

    iget-object v0, v0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    invoke-static {v0}, Lcn/domob/android/ads/b/a;->e(Lcn/domob/android/ads/b/a;)I

    .line 131
    iget-object v0, p0, Lcn/domob/android/ads/b/a$1$3;->a:Lcn/domob/android/ads/b/a$1;

    iget-object v0, v0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    invoke-static {v0}, Lcn/domob/android/ads/b/a;->f(Lcn/domob/android/ads/b/a;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 132
    iget-object v0, p0, Lcn/domob/android/ads/b/a$1$3;->a:Lcn/domob/android/ads/b/a$1;

    iget-object v0, v0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    invoke-static {v0}, Lcn/domob/android/ads/b/a;->g(Lcn/domob/android/ads/b/a;)V

    .line 134
    :cond_19
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 144
    return-void
.end method
