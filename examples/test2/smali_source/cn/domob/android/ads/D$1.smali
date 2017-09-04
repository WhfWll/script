.class Lcn/domob/android/ads/D$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/D;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/domob/android/ads/j$c;

.field final synthetic c:Lcn/domob/android/ads/D;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/D;Ljava/lang/String;Lcn/domob/android/ads/j$c;)V
    .registers 4

    .prologue
    .line 102
    iput-object p1, p0, Lcn/domob/android/ads/D$1;->c:Lcn/domob/android/ads/D;

    iput-object p2, p0, Lcn/domob/android/ads/D$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/domob/android/ads/D$1;->b:Lcn/domob/android/ads/j$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 105
    new-instance v0, Lcn/domob/android/j/a;

    iget-object v1, p0, Lcn/domob/android/ads/D$1;->c:Lcn/domob/android/ads/D;

    iget-object v1, v1, Lcn/domob/android/ads/D;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/D$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/domob/android/ads/D$1;->c:Lcn/domob/android/ads/D;

    invoke-static {v3}, Lcn/domob/android/ads/D;->a(Lcn/domob/android/ads/D;)I

    move-result v3

    iget-object v4, p0, Lcn/domob/android/ads/D$1;->c:Lcn/domob/android/ads/D;

    invoke-static {v4}, Lcn/domob/android/ads/D;->b(Lcn/domob/android/ads/D;)I

    move-result v4

    new-instance v5, Lcn/domob/android/j/b;

    iget-object v6, p0, Lcn/domob/android/ads/D$1;->b:Lcn/domob/android/ads/j$c;

    invoke-virtual {v6}, Lcn/domob/android/ads/j$c;->F()Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcn/domob/android/j/b;-><init>(Lorg/json/JSONObject;)V

    iget-object v6, p0, Lcn/domob/android/ads/D$1;->c:Lcn/domob/android/ads/D;

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/j/a;-><init>(Landroid/content/Context;Ljava/lang/String;IILcn/domob/android/j/b;Lcn/domob/android/j/a$a;)V

    .line 107
    invoke-static {}, Lcn/domob/android/ads/F;->a()Lcn/domob/android/ads/F;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/D$1;->c:Lcn/domob/android/ads/D;

    invoke-static {v2}, Lcn/domob/android/ads/D;->c(Lcn/domob/android/ads/D;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/F;->a(Ljava/util/HashMap;)[J

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/D$1;->c:Lcn/domob/android/ads/D;

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/j/a;->a([JLcn/domob/android/j/a$c;)V

    .line 109
    return-void
.end method
