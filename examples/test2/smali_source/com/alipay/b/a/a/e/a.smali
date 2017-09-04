.class public final Lcom/alipay/b/a/a/e/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/b/a/a/e/a;

    const v1, 0x69

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/b/a/a/e/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/b/a/a/e/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/b/a/a/e/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/b/a/a/e/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/b/a/a/e/a;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/b/a/a/e/a;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/b/a/a/e/a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final native toString()Ljava/lang/String;
.end method
