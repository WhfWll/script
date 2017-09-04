.class Lcn/domob/android/ads/a$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a$4;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/domob/android/ads/a$4;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a$4;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 300
    iput-object p1, p0, Lcn/domob/android/ads/a$4$1;->b:Lcn/domob/android/ads/a$4;

    iput-object p2, p0, Lcn/domob/android/ads/a$4$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 303
    iget-object v0, p0, Lcn/domob/android/ads/a$4$1;->b:Lcn/domob/android/ads/a$4;

    iget-object v0, v0, Lcn/domob/android/ads/a$4;->a:Lcn/domob/android/ads/a;

    iget-object v1, p0, Lcn/domob/android/ads/a$4$1;->b:Lcn/domob/android/ads/a$4;

    iget-object v1, v1, Lcn/domob/android/ads/a$4;->a:Lcn/domob/android/ads/a;

    invoke-static {v1}, Lcn/domob/android/ads/a;->i(Lcn/domob/android/ads/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/a$4$1;->a:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/a;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method
