.class final Lcom/alipay/b/a/a/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:Lcom/alipay/b/a/a/b/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/b/a/a/b/c;

    const v1, 0x5f

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/alipay/b/a/a/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/b/a/a/b/c;->a:Lcom/alipay/b/a/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native accept(Ljava/io/File;)Z
.end method
