.class final Lao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lf;


# direct methods
.method constructor <init>(Lf;)V
    .registers 2

    iput-object p1, p0, Lao;->a:Lf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lao;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lji;

    move-result-object v0

    invoke-virtual {v0}, Lji;->a()V

    iget-object v0, p0, Lao;->a:Lf;

    invoke-static {v0}, Lf;->b(Lf;)Lji;

    return-void
.end method
