.class public Lcom/bontai/mobiads/ads/DisplayUtil;
.super Ljava/lang/Object;
.source "DisplayUtil.java"


# static fields
.field public static final CHINESE:I = 0x0

.field public static final NUMBER_OR_CHARACTER:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/DisplayUtil;

    const v1, 0xe6

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native dip2px(Landroid/content/Context;F)I
.end method

.method public static native px2dip(Landroid/content/Context;F)I
.end method

.method public static native sp2px(Landroid/content/Context;FI)F
.end method
