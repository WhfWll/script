.class public final Lcom/alipay/b/a/a/c/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/b/a/a/c/b/a;


# static fields
.field private static a:Lcom/alipay/b/a/a/c/b/a;

.field private static b:Lcom/alipay/b/a/a/c/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/b/a/a/c/b/b;

    const v1, 0x62

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/b/a/a/c/b/b;->a:Lcom/alipay/b/a/a/c/b/a;

    sput-object v0, Lcom/alipay/b/a/a/c/b/b;->b:Lcom/alipay/b/a/a/c/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/b/a/a/c/b/a;
.end method


# virtual methods
.method public final native a(Lcom/alipay/b/a/a/c/a/c;)Lcom/alipay/b/a/a/c/a/b;
.end method

.method public final native a(Ljava/lang/String;)Z
.end method
