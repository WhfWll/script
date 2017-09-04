.class public Lcn/dbox/ui/common/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:F = 0.0f

.field public static final b:F = 0.7072368f

.field public static final c:F = 0.55921054f

.field private static d:F

.field private static e:I

.field private static f:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)F
    .registers 3

    .prologue
    .line 32
    :try_start_0
    sget v0, Lcn/dbox/ui/common/k;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 34
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcn/dbox/ui/common/k;->a:F
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_16

    .line 39
    :cond_13
    :goto_13
    sget v0, Lcn/dbox/ui/common/k;->a:F

    return v0

    .line 36
    :catch_16
    move-exception v0

    goto :goto_13
.end method

.method public static a(Landroid/content/Context;F)I
    .registers 3

    .prologue
    .line 131
    invoke-static {p0}, Lcn/dbox/ui/common/k;->b(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;I)I
    .registers 4

    .prologue
    .line 19
    invoke-static {p0}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;)F

    move-result v0

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/c;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/d;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 98
    const/4 v0, 0x0

    .line 99
    if-eqz p0, :cond_32

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 101
    :goto_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_31

    .line 104
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/c;

    invoke-virtual {v0}, Lcn/dbox/core/bean/c;->d()Ljava/util/ArrayList;

    move-result-object v4

    .line 105
    if-eqz v4, :cond_2d

    move v0, v2

    .line 106
    :goto_1d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2d

    .line 107
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 101
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_31
    move-object v0, v3

    .line 112
    :cond_32
    return-object v0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 48
    invoke-static {p0}, Lcn/dbox/ui/common/k;->c(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcn/dbox/ui/common/k;->d(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcn/dbox/ui/common/k;->e:I

    .line 51
    sget v0, Lcn/dbox/ui/common/k;->e:I

    return v0
.end method

.method protected static c(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 55
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_14

    .line 58
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcn/dbox/ui/common/k;->f:I

    .line 61
    :cond_14
    sget v0, Lcn/dbox/ui/common/k;->f:I

    return v0
.end method

.method protected static d(Landroid/content/Context;)F
    .registers 3

    .prologue
    .line 66
    :try_start_0
    sget v0, Lcn/dbox/ui/common/k;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1f

    .line 67
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 70
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 72
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcn/dbox/ui/common/k;->d:F
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_22

    .line 77
    :cond_1f
    :goto_1f
    sget v0, Lcn/dbox/ui/common/k;->d:F

    return v0

    .line 74
    :catch_22
    move-exception v0

    goto :goto_1f
.end method

.method public static e(Landroid/content/Context;)F
    .registers 3

    .prologue
    .line 83
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 85
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 87
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 89
    return v0
.end method

.method public static f(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 121
    invoke-static {p0}, Lcn/dbox/ui/common/k;->b(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static g(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 138
    invoke-static {p0}, Lcn/dbox/ui/common/k;->b(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static h(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 143
    invoke-static {p0}, Lcn/dbox/ui/common/k;->g(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f350d79

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static i(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 147
    invoke-static {p0}, Lcn/dbox/ui/common/k;->g(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f0f286c

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
