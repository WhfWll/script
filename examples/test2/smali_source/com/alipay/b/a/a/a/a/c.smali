.class public final Lcom/alipay/b/a/a/a/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/b/a/a/a/a/c;

    const v1, 0x5a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    new-instance v0, Ljava/lang/String;

    const-string v1, "idnjfhncnsfuobcnt847y929o449u474w7j3h22aoddc98euk#%&&)*&^%#"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/b/a/a/a/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static native a()Ljava/lang/String;
.end method

.method public static native a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native a([B)[B
.end method

.method public static native b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native b([B)Ljava/lang/String;
.end method
