.class Lcn/domob/android/ads/b/a$1$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/b/m$f;


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
    .line 160
    iput-object p1, p0, Lcn/domob/android/ads/b/a$1$5;->a:Lcn/domob/android/ads/b/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/b/m;Lcn/domob/android/ads/b/m$l;)V
    .registers 4

    .prologue
    .line 163
    iget-object v0, p0, Lcn/domob/android/ads/b/a$1$5;->a:Lcn/domob/android/ads/b/a$1;

    iget-object v0, v0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    invoke-static {v0}, Lcn/domob/android/ads/b/a;->i(Lcn/domob/android/ads/b/a;)I

    .line 165
    iget-object v0, p0, Lcn/domob/android/ads/b/a$1$5;->a:Lcn/domob/android/ads/b/a$1;

    iget-object v0, v0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    invoke-static {v0}, Lcn/domob/android/ads/b/a;->f(Lcn/domob/android/ads/b/a;)I

    move-result v0

    if-nez v0, :cond_18

    .line 166
    iget-object v0, p0, Lcn/domob/android/ads/b/a$1$5;->a:Lcn/domob/android/ads/b/a$1;

    iget-object v0, v0, Lcn/domob/android/ads/b/a$1;->b:Lcn/domob/android/ads/b/a;

    invoke-static {v0}, Lcn/domob/android/ads/b/a;->j(Lcn/domob/android/ads/b/a;)V

    .line 168
    :cond_18
    return-void
.end method
