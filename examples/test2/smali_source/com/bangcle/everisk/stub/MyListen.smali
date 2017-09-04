.class Lcom/bangcle/everisk/stub/MyListen;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private S:Lcom/bangcle/everisk/stub/NewActivity;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bangcle/everisk/stub/MyListen;->S:Lcom/bangcle/everisk/stub/NewActivity;

    return-void
.end method


# virtual methods
.method final a(Lcom/bangcle/everisk/stub/NewActivity;)Lcom/bangcle/everisk/stub/MyListen;
    .registers 2

    iput-object p1, p0, Lcom/bangcle/everisk/stub/MyListen;->S:Lcom/bangcle/everisk/stub/NewActivity;

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-static {}, Lcom/bangcle/everisk/shell/b;->u()V

    iget-object v0, p0, Lcom/bangcle/everisk/stub/MyListen;->S:Lcom/bangcle/everisk/stub/NewActivity;

    invoke-virtual {v0}, Lcom/bangcle/everisk/stub/NewActivity;->finish()V

    return-void
.end method
