.class Lcn/domob/android/ads/b/a$1$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/b/m$g;


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
    .line 149
    iput-object p1, p0, Lcn/domob/android/ads/b/a$1$4;->a:Lcn/domob/android/ads/b/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/b/m;)V
    .registers 4

    .prologue
    .line 152
    iget-object v0, p0, Lcn/domob/android/ads/b/a$1$4;->a:Lcn/domob/android/ads/b/a$1;

    iget-object v0, v0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    invoke-static {v0}, Lcn/domob/android/ads/b/a;->e(Lcn/domob/android/ads/b/a;)I

    .line 154
    iget-object v0, p0, Lcn/domob/android/ads/b/a$1$4;->a:Lcn/domob/android/ads/b/a$1;

    iget-object v0, v0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    invoke-static {v0}, Lcn/domob/android/ads/b/a;->f(Lcn/domob/android/ads/b/a;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 155
    iget-object v0, p0, Lcn/domob/android/ads/b/a$1$4;->a:Lcn/domob/android/ads/b/a$1;

    iget-object v0, v0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    invoke-static {v0}, Lcn/domob/android/ads/b/a;->h(Lcn/domob/android/ads/b/a;)V

    .line 157
    :cond_19
    return-void
.end method
