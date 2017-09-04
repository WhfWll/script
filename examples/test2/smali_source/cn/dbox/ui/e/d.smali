.class public Lcn/dbox/ui/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 8
    invoke-static {p0}, Lcn/dbox/ui/e/e;->a(Landroid/content/Context;)Lcn/dbox/ui/e/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/dbox/ui/e/e;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
