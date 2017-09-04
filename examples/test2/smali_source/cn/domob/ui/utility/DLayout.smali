.class public Lcn/domob/ui/utility/DLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-static {p0}, Lcn/domob/ui/utility/DRes;->initGetRes(Landroid/content/Context;)Lcn/domob/ui/utility/DRes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/ui/utility/DRes;->getLayout(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
