.class public final Lcom/tl/uic/util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# static fields
.field private static final PERCENT:I = 0x64

.field private static volatile _myInstance:Lcom/tl/uic/util/ImageUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/util/ImageUtil;

    const v1, 0x423

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static native getInstance()Lcom/tl/uic/util/ImageUtil;
.end method

.method private static native getMainView(Landroid/view/View;)Landroid/view/View;
.end method

.method private static native saveImageAsPNG(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public static native snapShot(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method private static native snapShotHelper(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/Boolean;
.end method
