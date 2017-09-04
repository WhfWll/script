.class final Lcu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lct;

.field private synthetic a:Lcx;

.field private synthetic a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lct;Lcx;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    iput-object p1, p0, Lcu;->a:Lct;

    iput-object p2, p0, Lcu;->a:Lcx;

    iput-object p3, p0, Lcu;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcu;->a:Lcx;

    iget-object v1, p0, Lcu;->a:Lct;

    invoke-static {v1}, Lct;->a(Lct;)I

    move-result v1

    iget-object v2, p0, Lcu;->a:Lct;

    invoke-static {v2}, Lct;->b(Lct;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcx;->a(Lcx;II)V

    iget-object v0, p0, Lcu;->a:Lcx;

    iget-object v1, p0, Lcu;->a:Lct;

    invoke-static {v1}, Lct;->c(Lct;)I

    move-result v1

    iget-object v2, p0, Lcu;->a:Lct;

    invoke-static {v2}, Lct;->d(Lct;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcx;->a(II)V

    iget-object v0, p0, Lcu;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
