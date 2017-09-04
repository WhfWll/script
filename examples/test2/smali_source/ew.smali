.class final Lew;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lev;


# direct methods
.method constructor <init>(Lev;)V
    .registers 2

    iput-object p1, p0, Lew;->a:Lev;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lew;->a:Lev;

    invoke-virtual {v0, p1}, Lev;->a(Landroid/os/Message;)V

    return-void
.end method
