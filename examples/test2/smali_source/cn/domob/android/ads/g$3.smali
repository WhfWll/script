.class Lcn/domob/android/ads/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/a/a/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/g;->a(Landroid/content/Context;)V
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
    .line 1031
    iput-object p1, p0, Lcn/domob/android/ads/g$3;->a:Lcn/domob/android/ads/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 1072
    invoke-static {}, Lcn/domob/android/c/e;->b()V

    .line 1073
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 1035
    new-instance v0, Lcn/domob/android/c/e;

    new-instance v5, Lcn/domob/android/ads/g$3$1;

    invoke-direct {v5, p0}, Lcn/domob/android/ads/g$3$1;-><init>(Lcn/domob/android/ads/g$3;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/domob/android/c/e;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/c/e$a;)V

    invoke-virtual {v0}, Lcn/domob/android/c/e;->a()V

    .line 1068
    return-void
.end method
