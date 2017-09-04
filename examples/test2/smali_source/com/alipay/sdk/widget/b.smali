.class final Lcom/alipay/sdk/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic c:Ljava/lang/CharSequence;

.field final synthetic d:Lcom/alipay/sdk/widget/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/widget/b;

    const v1, 0xb7

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/alipay/sdk/widget/a;Ljava/lang/CharSequence;)V
    .registers 4

    iput-object p1, p0, Lcom/alipay/sdk/widget/b;->d:Lcom/alipay/sdk/widget/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/widget/b;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/widget/b;->b:Landroid/content/DialogInterface$OnCancelListener;

    iput-object p2, p0, Lcom/alipay/sdk/widget/b;->c:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native run()V
.end method
